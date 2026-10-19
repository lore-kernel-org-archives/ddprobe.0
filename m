Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539A94F3938
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792414834; cv=none; b=RDqjep+cmPh/CbvyfwpiwjJa1MpmtlYTwN1lchUYcQ+ubwGws+jecPbjQEnauTkKlQJ8LdjVPXVckn5N3I2dRUomvnmqTMhkHQHx5t9rDAenWJHC4AbYGoF/IMTQiAnWa/MDglhFENQK0JsZDoq5jCoYdDdB44esqJa4cp6y/vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792414834; c=relaxed/simple;
	bh=zWzFqtNn5Lvk1N9wWzbyJYOkyWl5F9k6/oe5HRqlM3c=;
	h=To:Subject:From:Message-Id:Date; b=RrY3QrVsmpqtQfAM2rIuZ1n2sNWI1lpNA4N+AGPio9r8zyR/YVcsdrFikH9YZKe5TAMCY9dtOasD0AfJOtYgcBSrjnqn7E9IMrHRNceH+VmDWExg9xUMunSHkDnrkEGv4ZoT/u5EbCr341mMLOn6sk8Plf97+CJ/UTe8/8gtEVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vl+fXGh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vl+fXGh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05E9C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792414833;
	bh=zWzFqtNn5Lvk1N9wWzbyJYOkyWl5F9k6/oe5HRqlM3c=;
	h=To:Subject:From:Date:From;
	b=Vl+fXGh5mJYc8B4IE3EzdMbUqkRvgB7vRdE7QxH5GLNQ+f5gsSnXdW97E9tGtC8JV
	 hBcU0GXBKFnkBhn5su5C9hpp5HCQA+DIOvnyMkwECJRs1O9O4xgdYro28pUUrGxeY9
	 0hBxp/0lpL3HaS0+fqWRSfatS4CFJTCc51Wa8bQ0240UvKxnvPmdMIvGtZOz2hLzXR
	 yvFJp3efHY6SUdHxZGaTDnsOsiFOfFp8ei03t9bz+H28Nsnu+orPBWextTMJ5tdfLR
	 NZ5zfbj08cT6yigiDrH3Ai2fwb3Rp85zJyCwoc2gwueHfjAjP296Z9LvAC0BFHrSAz
	 QI98CLf8iLw9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4532CCF2E5
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241483372.4466.10668849883203160456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8d9d80ca974a95adc66398316c2d95a8d8883d43839e0433f10fa52f8b8375
Date: Mon, 19 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792414833
