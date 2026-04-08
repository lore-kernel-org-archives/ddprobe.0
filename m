Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2173E1F30BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775624734; cv=none; b=nRWOZgL0xLxXWztF/KHOVfvsODnFYdmAk2EEH/krZAFhZg+HRZ9wy0nzwyI69CNluqglUcwxTmVGg7HVbZDrsSTmt9+upkpANv7ZYSunBPCMnd3j4APq4c2YMPiss2Uh9YVavNeNG655JSszzHX4e5rw7+CmTOTowQ4iTguMjqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775624734; c=relaxed/simple;
	bh=2iVhrb88PkSVToRrZEaEaUKswQxhQeW/R+QcTafXIsU=;
	h=To:Subject:From:Message-Id:Date; b=aTUq35dEQxc/W2TD7P/6Y4TDJCBaGL/6KjCH1CtzBgd5Y+X9lDK8KqMs5a8d654FHapGQvUrveBrb5P/E/QZv6LNemG7Sqgp0dZFeHohoIv+BItpNc63OxwjTyenlfXQ3Gi3Kuj6GUa8SDzquu0FZbjq+y3MQAV0ZwCl/hYYmLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hov9zIWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hov9zIWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF9AC19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775624733;
	bh=2iVhrb88PkSVToRrZEaEaUKswQxhQeW/R+QcTafXIsU=;
	h=To:Subject:From:Date:From;
	b=hov9zIWviLlGS2k86XJAwZqjlbFZpQVJdsbdFYhIy6VbgG2/yyueXSf4JjOYcmQuz
	 QhFK4Q1AzU0xm7s3vJYCzLQR5ICcXWlv/zMUSni38YZQn1nKabvn+kLd7KjwjihLIj
	 8p2uqqcFNb9TAlZBttt5Xm/lJ6NYwQh31CfeKp0no9+XhxRMbb7pPLt4xaFdawYSwX
	 1C/+YlBhZWwp52SJy2ie5VLTKvcB/N/SFbpT1ZFyTjVqNMwcfJID4xzjhev/fSdlk2
	 hmb9ZkkgfyDCa3j0C6eSKeOAgX6B3bwSDNUaNhl9dMQqY6O87B6KuMv+NHI9xoLXmm
	 wbq1H3C11J2aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECCCFD5F70
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562473370.7805.1883241996782611489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d724a596b42f26cb4b8372b669b6539e85f4abc6b1d1d0fc126592a6b4dea35
Date: Wed, 08 Apr 2026 05:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775624733
