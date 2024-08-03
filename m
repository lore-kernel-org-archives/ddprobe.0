Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B751ABEAF
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722671154; cv=none; b=HG8N8tv2u83iDKI1EmL/INpfsRkfl7RrtyY9eChLA20IV54Nf2HRCDWRLAd5C/VGnxZcSRMWQ5ladvBb9AzOtyT8z4UYtR26jo5NyEROmtqQv3Le5hxulDsvn1mpUTgKciceyq6PJPAIJlcsTrWzArYA1qJTAG79k+i8cf0IS1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722671154; c=relaxed/simple;
	bh=0n0pWdQ5Q55OB8dB7Mi2TXNznmoyvFSYmXxU2zom4E4=;
	h=To:Subject:From:Message-Id:Date; b=s7PurU9ETMhkx1iBmsoiY2OUK11zKggC2XtqvxA8iNBI6kz3bd3x71wm3DJeWOxP1MRgqdBxna1zhXs/ZAjAl6cccCXcddSLwg861advaYLf3r/O/SnG+R8Al2cP7djcnPuGOLO5Ib8YwrGEzdBzypg9BbxF87ZLa4XVSdwFWZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ES88Vw4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ES88Vw4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EB2C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722671153;
	bh=0n0pWdQ5Q55OB8dB7Mi2TXNznmoyvFSYmXxU2zom4E4=;
	h=To:Subject:From:Date:From;
	b=ES88Vw4n1QMk6+E4MaS6k8xE1KXFAc10tR+Gn/7rWGkhUJ74tqmGe7GvoXM8T0L1z
	 sqFcm+Emd2ZoWi0XsQLS5MlMefouQoskrfFpgs8Jz8HLRfrAbbY6dGNbX2gpbVly5I
	 IEeXOYrbV6j0T9xitHWute7jhr9lU+9VtI0T0FescllG1QDc6v/9XytrfTWhCZPkD5
	 OuayGUUd+lbwK3pJviUdYqXTyub8maYTlswtiuUpEKPU2E6APjgG3Pfnspr20lvYZv
	 ZfDWIXeU/ivIyK8i8OEgxORb+7QTzcG423n5eKkDSLEKo7QJ4ONIVDOKrHVT8LzhVm
	 PyQ80uMq75QOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945BBC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172267115359.8406.18150108892680580989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3675695255c147eb141b98e0e3e7f323928ef96b4338696f4da54508369951
Date: Sat, 03 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722671153
