Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D269918C01
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708643296; cv=none; b=Mo9zeSs9dXWDWC4ELsKfXjjd7Qnkypmdru2o5Wi52ynDwrqZsu96rQntgUMdLjEP+77ps+/LRvdWtHXBO2hTk1w6wgKrAmIAavDocz3EJWjoSDEv6mlF1m47PgGOjogbVkJG04fMzLNVCMyCI0SLyi6afkTQTmthVOxiyBb6JDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708643296; c=relaxed/simple;
	bh=0eFJwDulkQ4+7GcscRas99W09p4K5wPuIWvuRO9E19c=;
	h=To:Subject:From:Message-Id:Date; b=KSxJBWQs33gd8jktsKVx04DB1Kcakn0wF7CafSOKyy/AZbc7O5q+9y4qUhd/eg3XhB3ZQ2p2Crm+8nLy8s+9P5dNHNO7aW1vSN8sW9R78+UPUuu0gBWYfJKB3pVdsstMjf2G1/WOIaDsO3JlozvPl/Q52/yzFwO301Enc4YyUOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwibf4HU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwibf4HU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749C0C43390
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708643296;
	bh=0eFJwDulkQ4+7GcscRas99W09p4K5wPuIWvuRO9E19c=;
	h=To:Subject:From:Date:From;
	b=fwibf4HUvZ1YI6eae5qpOW3It751HEnhc59tfQ/qg1XelAMn7wd0hBJ/JJ4e0E/gX
	 cM/i0dA6euc96s23cdIx6B6pGaaqoUGZUEcA0YXgxLPETFfJnWQx6ozRTLo1/HDYPk
	 FSJp9BRdOZQht42xSA2RQ4YnC42G+Lf7lxZcH1+mJ6TGtjNiCOPGPgjLi12N5n54xR
	 a6wjNqm5aDxccJOlxHFEr1sJv86jpzKuL9S8j58m82OQPE9lTb3j0w6BprLG6D7JRy
	 83OoKRxNskr6fCKPDRIlBA5YH5dyZ8BKb1Su7Fvum3h5G6X812PIMUhgCpbOvgxzjg
	 chtLUHfXMlR4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFACC54798
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170864329637.7495.12486024371192088943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1254962b92b3cdb05e7a44e791a616f49f864a596b8ddbbec1c9a94f1c2b5c5
Date: Thu, 22 Feb 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708643296
