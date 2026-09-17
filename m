Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B9B3DAAC8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789684834; cv=none; b=ZnOORatbdlnM8iuwdkybWExZcJ7Np1N8EMs6wMJTkhNPE4kQ0F0DnrGQg5+lO84LI1L5Fcn7pbIxHPlDm4gXTwfIRoI+rAitn6my8WP6Y5HLLYSdVRWSErEo7xbmjaesWIX1iygNiFWH+PjBskCDdTwSw71Hpi3wu905iTqIWYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789684834; c=relaxed/simple;
	bh=6O/ec4FW2x3qUkDznuouFZX+vNO2FtI3EBqC673PCcY=;
	h=To:Subject:From:Message-Id:Date; b=FKa+eF+KlZygJWYbUjmsnTOe2xTqsFflXQWfHQZAJad8Ebsua4Nn49AMMDsoI+W49b/TkRoYV+OD96CUeFTX+V1LC7DohVoYJXRLb1z3Th9ya1eV339RuNWaIp0lIZx4kMkIPrXjVlECApo8va4dWkOExTSX6uaD1aVMDQhNHdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEq7SXgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEq7SXgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D627BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789684833;
	bh=6O/ec4FW2x3qUkDznuouFZX+vNO2FtI3EBqC673PCcY=;
	h=To:Subject:From:Date:From;
	b=KEq7SXgL0Y5ZDpVNedyL1HhrvB9cjBElywNLhEL11Gsasqiumyn3+suriWPP5o493
	 iVsEkMKTxpPp7IaM50mfP8T5X8pKPSoNam5jM4fv+7GgYC+xOu2WDWHr2a48qvwX6n
	 j2rtyznds5KEqwbacv29FLV5SYUqy+CRV8vI9f/VIQKbjm6Hg49Kb22hC6jNrDiJdy
	 GU753d9bJO3rj210d9Tq4wkS2YABBxRKO6oI5vooNrjFp1im0rMMGk6cAL56wPJOYe
	 kGAIN4GBIFbzx48ojhgLzTEmNgFbH4DtD2WMFJsFt9eixbzvwZS4hquW1bxnB9MPCO
	 wwDBGrbOM5WJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFE2C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968483370.18081.14582276869655140610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3742bcd339876bf399abf5d859af76997cc629001629a2de5bd71f787e6821b1
Date: Thu, 17 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789684833
