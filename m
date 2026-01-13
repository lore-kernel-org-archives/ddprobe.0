Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322A82BD5B4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768314834; cv=none; b=BjIzmalhW9ZpuaqzI2/kISiRS72y0Ryg6MCZxQhe+c20RPqCkJarJNG49HkTker6qC+ipKtfauU2ik+SpLS5kXwVFUdAJX4dgxJBfbZrMwACcxVoWWSjpe+53fwNnIDGU6T1T83oVHr4DP2FXMiZ/7ZmMqI9v/AW+bSNqcg4Iqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768314834; c=relaxed/simple;
	bh=/9ufTPolGbpjB/yjQiTF5dmeYoWZyAM8TdQBMvcwWgs=;
	h=To:Subject:From:Message-Id:Date; b=l+h4x4Cq1myfkcCHdM1WuqQuquYPCGD1UJUVoaOLSiOarNO4b19dvqFKK7D+6/uDdj7UFhg1hmucZKakx/ZC+tKViGsw8joyNUerm8jcdtF/sXa7zB+xzQGHxV7Oz2fdLXALNNy6Tkt4gCATKiDjQxIV4Qp/PTGoa0ysDxZw3+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTothzj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTothzj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2B9C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768314833;
	bh=/9ufTPolGbpjB/yjQiTF5dmeYoWZyAM8TdQBMvcwWgs=;
	h=To:Subject:From:Date:From;
	b=WTothzj9o3/LdnQs931qqMz4OMPK6lJvQrwRKaO4NXdsu024Q5XeCXyhVXycKtj3G
	 6VSwWsGmG0TIREipjx7S9ovsHSQNkMnwUc+TGJ43Iik4f46ocEMNEg/rTcRA+DNH7D
	 kOk2Sqw/nHRpmql/hCEYgSQJngNXNWJs8PJpgbfXXyKjoY5a0pXLLvnHkKKLol5Exh
	 FV4Ymfh5JTdkz9dLkeEivMHVyCoOTADSuwQG/qypgfiL+rA/2Vfxrjl/V2luzTpEwi
	 SfShIV0AL+DDHA8VefBez525bYgZ2vcy2/uKPX48V19gkPafZmPGQNEdDKVFzjDE0M
	 kp5vuk607FGmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CAD2D10F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831483357.25364.5596162688320373175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fc358abdab79a970f4e43963a4bd9eab7e28c4cc4781adee377a5c99c56142
Date: Tue, 13 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768314833
