Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1989017BA8
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 22:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715467943; cv=none; b=mDSyJN4LObqzl3OWihq4j6kgF+tYqEPMSBH0imu9K3V8qchOL+AqH9RFm5DtIHnTlroklv2Xw7SaoGvJv8otAOUb1kWWSY0ADyjEhPNLYBMDNBKQtVty4YBgTJtVV0/EAZvZwbKeOvgstdpMrCBmO1R1n1rnSVwYL5oYUzD9nV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715467943; c=relaxed/simple;
	bh=JXZZ/xF325TncWrPt4rCaeyVs17xfCgUbEJM3FPEpEw=;
	h=To:Subject:From:Message-Id:Date; b=rZ7mJCa827segBxMpieZjhF6jSNef18azgrWaH0qoNusaKknHZCOeFB875DzO0fMJUhSXj4lQ1pu7VvJjcx6VWsuKp+ezf6XYp1DaHKsiYtEGaH1gz4HUfdUlqQJSjnY9tPNtKC3UUh0AlXU9F3vHIyplRp91qRuWx6mEUjhTyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWYlShUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWYlShUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE527C32782
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715467942;
	bh=JXZZ/xF325TncWrPt4rCaeyVs17xfCgUbEJM3FPEpEw=;
	h=To:Subject:From:Date:From;
	b=uWYlShUVbKOy+ach8TQDKPijgC0Ftyf5NihO0PunqPfyyQKaHqlUGfpCpj7encRzc
	 +kZIbemFJCdRWpjtyHC/M7SJjGTwT9zjTohK7kqonfUeJVXPBFns3JwEyeM7O7QeHX
	 OpmrPYcBFxZ8xFVlTWDLgEppKdNIG2z1Hx07vi4Vqm9J61iuBhhyfvrdh5Gv7Nr2Hv
	 n05J8YIZJINyY3Pxq6nEB63oBIb2Uuzt/5sr/FA5Q7kekTG9bAKM5rcwi8KiYCjHUx
	 PDSVfTtIDz/4yCKSBvmGa8q1hMvPfJJw+/t8Yqa2ixkffggU4hPyhdpg6CWG9U5dRw
	 qcaeFYwMr7uaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8F9C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171546794275.17130.15314666138246468155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a768e39ca3b5f4271dd9eadbcab3be2b16d1ee937338c7b5e2eae82d4806b845
Date: Sat, 11 May 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715467942
