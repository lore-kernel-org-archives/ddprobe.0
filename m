Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149502F44
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708067897; cv=none; b=YU8szt/J6IADrD2Rws0bmsCJ8Lza8TfvoTDfHNEdVEb6q1rBLZBp8ROGt8ub3nG7D61WfBu+HezTWs1rQjV24YDxHSEM824/gr1u5y8+D5FHHDZYTXf2CIkqp75opU3uZ9fhOEKI2uJyg5V7t4Zva7D04JAQqqjtk5YUIz0fc2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708067897; c=relaxed/simple;
	bh=6AIwmSNuT3L3RdCWJ17cakbh/VgSwHonB3bXfk902WY=;
	h=To:Subject:From:Message-Id:Date; b=IS3kXDeptg1k3RY+wLRZXKyxdeybPHTFFAT19FsinyiCFle3bMW7EUvQX5942UZHY5px2lDtlkgucCRStyTCpluayLVDU7W235iogrwrR7jnF/G+s/SJ9aXfqpfWBEzkcIxmR8sJtbyQQwd0NDRAuc04WZydkOWmIzVFKCdIodw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9gOnwBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9gOnwBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D42C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708067896;
	bh=6AIwmSNuT3L3RdCWJ17cakbh/VgSwHonB3bXfk902WY=;
	h=To:Subject:From:Date:From;
	b=O9gOnwBXlMeIQLs82wDaOb93hvJrzhX2VYGJdPcQFDrUxs168vT7VE9sA1VpsWUfF
	 hJZ0dlskK717RB7cv00iBtsmajnb01zgvhEnQPc06sSjx/VmC9ExHVpXljdmxVQUFF
	 JZFMShmBExfvgdxGO6t+60itFbHjzJ2G0kuz3dqZ/UqmjSkKXgQMnPQQ/QMF3X6GHF
	 5uPRkYHyQruNrJfoM0F5cn+BYSe4NfEoajgoYE1GH12EKwakeVScCFEczbmQFcIBhL
	 5v3rRHL55MXAFg1O43/2wYTRyFqNrB3aSxEiHTxsjWBUiETaA1YlLisnKkdHXDXxgL
	 2Ezs2wepQyYCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5BDC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170806789636.11827.13771302495853960084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7e3abe14535c11b8d81bf0430905318bb245d538288ad11975ed691a193514
Date: Fri, 16 Feb 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708067896
