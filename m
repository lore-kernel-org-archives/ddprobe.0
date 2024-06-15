Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609E3208D1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718443703; cv=none; b=ZwIzc6TamyrriozBLf/ZFbYq6BPjScZFXwgSmKk1M6FrubE785mmSOfH0gKJSvUlSTV2A/wY7joFQ9yfp5Ec7+wbiNClM0ycrl8e45lOk0oCcSBeATJ9VCLFBqCtGloT5OSNrzaM8jdkQiRGAKbEMug3PaycT0IfbFe5OqNhTH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718443703; c=relaxed/simple;
	bh=V6KnUi/QpeSuTO5fUe7iCFPuPBQ87893qoyJTePnDBg=;
	h=To:Subject:From:Message-Id:Date; b=IpRUi9YIhO95cJlTOdGtKB4Ui3HoM/L1mrVJFWqexBXavTT8bMKafIpCG5H403LA6X99k0EZ4hP8uqDQuxS52KduVMy/YPVO3aTFyk6/toZJWErMHEkFfpf6qIfqfe/3+AGMiXuLJ2uY06v4hbZe8hAlQLb+XQd4563zpHPsxzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdjVfmUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdjVfmUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC021C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718443702;
	bh=V6KnUi/QpeSuTO5fUe7iCFPuPBQ87893qoyJTePnDBg=;
	h=To:Subject:From:Date:From;
	b=IdjVfmUovYA7M1gWM9fyXlm9Fj7Ijy/VxvX2mOlrznpj1mVvOJ/DgTFQk2gOwzWBL
	 plAWzOCXejSXS/zJ8L1vPx+BhpeLDuc8GG2wyxPaCTDetSdLIRTsgKJzuZ2rezPVZI
	 w01PkESVoG63Ud7d++qOJZXYE6d/MRQx2xsAgpg8wdD39CBLdSSSbZvai7Ap0i9ZAD
	 ht1OhgigJQrpvVeNRE1Fts0mAuSKQ2Gvx2p8xPirg3pGpGMsZIYdvr/gbwMQKMBnMa
	 2vg1/lnRcT65MV8mqSKR2CPIPXuRzO9S6qCplPN9IjVA7GJXJMgxmArU61CHBCFjqw
	 LmHR+jLT2e+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C359DC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171844370276.385.9969143990881677040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b0e197d837d583919c11b1cb351da2e475f012add6deed08440aef6a1e9204
Date: Sat, 15 Jun 2024 09:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718443702
