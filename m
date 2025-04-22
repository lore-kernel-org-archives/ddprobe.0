Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B17249E5
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745342994; cv=none; b=XyHoxYgWu5La14HBc/qFGjSqgtaP9Vc5Z8l6xhSP2Md6iI262Qe1pd2UUUQiR7cZl0m6IC44JZ+NLwScnUOdbH43LVT8f1bXdjRBDbuAH39rdCTxSEnpqXZrdm7nJD6HaPNqtVjcaQkAId7eMfU5LRGppNvF+0TN/H9ACOrFA34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745342994; c=relaxed/simple;
	bh=3V+TaCH7zrPdFr7c7sHYPBxHGuXXUd1Bci72JKHOH8I=;
	h=To:Subject:From:Message-Id:Date; b=RonARE6cX3HzNN/fO12UgyCI2VdqFsqMwYqGzxuL8KI93LB6N5McJle3PLqrqyCj4qWzMt9wLF1VeHW466y7EaR8JtGomhnUFU/rP/zqCPw3hT46HvcGtjpO2VD+YaUAk0f9CV/dNrBudn0YetEZ06zg2OlN+6jS2Pe3V4bSbt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmmBwCP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmmBwCP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E18C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745342993;
	bh=3V+TaCH7zrPdFr7c7sHYPBxHGuXXUd1Bci72JKHOH8I=;
	h=To:Subject:From:Date:From;
	b=NmmBwCP6FkKy2EPQIgpA6+aBsGTwxMjinrUfh9wuPnra21xsDUFdSvVLXX9GI5lco
	 syaOr8BLXt917AbHrGzGUjW/KegSda3vAl3DucyYX2pW//Us9mMKlmKCS7netkM/LX
	 jHNDN4zNYxIeSObZE/YIpFR9yQvZfhxZ3/z8sE5ZjbgOBQqKUMW9TlKxv4WctkNJEO
	 h6FsrmYULrRkhprJFjw5AeUsM3+ubpRFwsUyArPchpmE0oIiE5hTNWeLvBGbKz9yr+
	 bQm61p7fUX6sc0uJKobu7mW1usupUrHT1CUgTyY/Qz2grqH90GYaE2RjFLYb6uWKCq
	 Pk6aZ3TAYYoBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B71C369D7
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534299358.22422.12052543416590612161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f25eb34710794ceabff2ad78143ad2a02ae69f702fda592050a9edd0ae7c6ed
Date: Tue, 22 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745342993
