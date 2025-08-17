Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2113E1DF754
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755443395; cv=none; b=Z+j2CJyE8ARsQo95symAIoqoKPa25dYjA48ZJm5dJOd2jvYamYpXlIPsKj5REu+11h6Xm7hkn8frmxZvFEs87EzppGDPrYCq0EDESkkrFo46gBnXwfI8zxH+3HP7rFiwX3PDDHH2juVincjy3JSQuFujU22qC/qydvXCDi72x7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755443395; c=relaxed/simple;
	bh=bAhi8ijPLSO1K5KADmqK4Y2ACy8/Bys5AIMGttWWxU4=;
	h=To:Subject:From:Message-Id:Date; b=BPTVRcTGPNh+uScKYBNJ/xEVUpoeJoDXe8H2Ao7yGl1cdgbrX2bZNIREpZ/TjKlUUwMB4UJXXZtOOokZXAY8q4+/wUPlyvoShrB5VnH6irplAxxIhrAKpRosstc9ZU7kAwonxgvqyQt5lnx4/I7NgeMKJYvEyUnXku8Tdfm5Giw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXzoT8Kk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXzoT8Kk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC22C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755443393;
	bh=bAhi8ijPLSO1K5KADmqK4Y2ACy8/Bys5AIMGttWWxU4=;
	h=To:Subject:From:Date:From;
	b=VXzoT8Kk7zQo+ujAQdi3dJfze8mG4q1xh3+tkO2HFR97lcVtkD8vqCy/uPuVpGsfV
	 Wy6UOQTak45GQ6OSA7VG/1GA76tR2eli23k2OeN19WyBl2cFgPDTKmWHyhgBh0XA7c
	 00zrGS0tW3cLEbWa0tNGoIgIPEPWGSlZYvtaRhZ2jAM1gD8oaiDCkirMRJieYXaut4
	 3CaBEkXqMgFkE5ypzYAWUSFe6wGNghgEiyECoZbE8wAGmdL1R9zW0LB4tL1VAPq+d4
	 okCvhox6pycy5JV0QCk4LqsBtI5cYWx30QI6ZbMDPd3KIzvNEHfsv+SQc4ucs9t4f5
	 TGYcC2VfSIawg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F497CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544339357.4950.5884587026639991395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529a1e920fd0e99b5427c29dd932d1c00e93c4aa1804d5982dafbfebd948fa34
Date: Sun, 17 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755443393
