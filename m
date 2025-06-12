Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2740E1A5B95
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749694194; cv=none; b=haWzygOifr0gcFTOjsMI+fTzf40rJrsCYTD240exkhknQ5+lkPEfJpzNSRw1ftNVNVuEmP0f+TH3XYbZYSHXvnbOaMqV4fj8MgEMcfb0tBAlix2NMUOgr8OJ27bh8hPtgNqssvt1Ywr0PzPz+YaAf53sHzV6og3xumpTptmJsX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749694194; c=relaxed/simple;
	bh=CO+8Yfj97KXt6jMb6zqBw5Y87ba9HAMQ4PGIPZE5kgQ=;
	h=To:Subject:From:Message-Id:Date; b=cyvYbHcxTR8tMrV6GjqLPC77rFTrQvEK9ACOYa8Wf9t+kkz6eVU6Rz76a3jHA39Ge9slEYrzPDijFaTPCgzp7X11mbbs8Brs/DkjlgIoHCjDjkBes7/S5q7/1tvVj4ViWJ/bqpxFqUz5fM8sd18y2AYAZHHR0yS+KGyCVb1ZZ24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZncAcOyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZncAcOyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43ABC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749694193;
	bh=CO+8Yfj97KXt6jMb6zqBw5Y87ba9HAMQ4PGIPZE5kgQ=;
	h=To:Subject:From:Date:From;
	b=ZncAcOydsIa1QPb0YwzYMg+ulqIORsIfsI152ewQxAk0sSa50UcdoZmDhJwYpZJS6
	 vzwC2BRo0SiXeARlGuO2PD6WPohuXZvKpz401GmG/LhP+CvzdjFhc2LXIpgdtumIgo
	 w59iElRncUKyDB0t9mzrNWxS9RcmO3DCWQIotPHeH+2zEBruzY9lbsgqiWeQfLMj9v
	 fqJIJt0xTeVXFb6eS8OEDJRiAUwVuQJibsy7DGQPlF8EajRKYi2ENFVn80ZuTycnRH
	 zBOVjj44a0S7zp4/0hOh6yTWB/rybIa2CgcORvnyyVAEahiCG0LQkd3oh+kM8Q+knw
	 FPDMqGqPfTe7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90533C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969419358.24521.14552539496466269237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919a2a6a5a0877454f90d84dcc356cd534b5f0ac666b156cd626e765e9de5cdc
Date: Thu, 12 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749694193
