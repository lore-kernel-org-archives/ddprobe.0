Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF3C442FBA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785839434; cv=none; b=IAiHcwDJCub16i0OW7MuV+IHSIVoFpaOPq2GNOM07om+JB2yOf8WOrxaYWcO4NZZAVkbTULO+cNK43D25ANgQkqnhwpIB6Uc8aS4HSVaQw0ErlDlC6PnQxKwqkBTrlmN3N+xr7cag2PO2RpDMVFE3UjX8xsE8W0Vol79R1M/OCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785839434; c=relaxed/simple;
	bh=J++VRhenPwDdjqfqSnBUpJLzMq45oVQUMUTL/0pfR/g=;
	h=To:Subject:From:Message-Id:Date; b=TDCHKWYZHGfijgOndGmR0TR2PJ1g0QcuNMSqD1WCwW3QUVUcyoDsgUidOkZQ9M59drKoCJSZI7/taaU1+n4Q2paualws00nqPBuyUqI1NmYHoa0gR/bUJ27NT+hLbHNKgBPZFHqkZBDeaaeNDhNYS83ns8ksZgseJjWDPTjftaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNfrYXQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNfrYXQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7102C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785839433;
	bh=J++VRhenPwDdjqfqSnBUpJLzMq45oVQUMUTL/0pfR/g=;
	h=To:Subject:From:Date:From;
	b=GNfrYXQOQmWB++dyknH/ndFfCU96FTSYOk4vcxLTLP1ZJW6AS4HYujs9S/UFLap0c
	 hCRXfnM6Oi5xe4+VKF4Yh9bec4mRlR/n9Jv5seuMECjBHsiv8+XLkOApj3znaDlySO
	 BL9EunnD8bWh4B0AO1II0bbUT1QXNa/Z4NKg4J23Zt1gz7qtVT6VSAIICSdk2Cpn+x
	 pv8zkzYHWS+Yfng76qMXn3g4t/KI5lU5z60mdOrOmf7t5Rx39C7ps5aJFZIcQhzNPG
	 I7vwWoIvidhK4TwnoBrrPBzyIF9NDSBQ5Kjk3SSpQMMSo2iUAY96yeZa6V2Dw2KgjM
	 OTbLA1AAq3Q4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B123AC5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583943371.9689.17317233966510169536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359674af90cd513b4141e772d0221bd748c7db22359048432a0f1ecb74560a46
Date: Tue, 04 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785839433
