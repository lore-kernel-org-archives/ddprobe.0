Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2258415853B
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758565194; cv=none; b=jMWEUhdEtJlQnKgGAfxH0YMnW+hd+etYm91TAQsC4sWKVVzMllpGTDVfEzK+qFcoK6/dK6QxfKhQOTFzYydF4Ye677AcxICMr7hK6yDlPo6wZ4hBnsDC1HKRPOdiawYiW+VQVjDZNACL3d6IMRMiTVDgjYhpAy51UvuDuzFkP4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758565194; c=relaxed/simple;
	bh=wh1GRKCubdDZ2V9SF3+TUAlV0ZcEkLCVnBtJNfmQn5c=;
	h=To:Subject:From:Message-Id:Date; b=kkyqWDmkDtFb2+zWHNrV6vLn+Sp6IWBXPIIf/wmGXI6jv/3U5iO/4v+jaD5ChJ4IXGuOFZw8fCHb3dzjKsrGQ4CguDmeSCPgv12vbw/kH6QRrakSMVy9rov/cIQf8x6aUuax6d5agjh6PTO4JOfKHvIraqZ+L3NfbNmO0wQPhAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2uyZFNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2uyZFNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7069C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758565193;
	bh=wh1GRKCubdDZ2V9SF3+TUAlV0ZcEkLCVnBtJNfmQn5c=;
	h=To:Subject:From:Date:From;
	b=e2uyZFNuLU53frOGrS3wFKdhMDRRH9g/L5ulYkgUxW4dYHIe4mXoRX0XEACe1DrjG
	 ydI/+rTh3HV/rl+w5kjpXDEFKIAhfAwIjeTVExpnE85EEC3qis17Ny6CeXgcurq3Ir
	 kZoMkMTpjReKhcyU8VFlvkv+Zy1E95sGDhjsRkv1I+SbYZo/39Qu3ho/TfTUCtCjb3
	 8HuR7TOs7S5QqFk3e8mqEbmpF/D5iorBbzpvavyg4jh2zhH9XawhDUkXl9OUGW68Jt
	 5fWjYpq6LD82dfScY1EdfG0VQD3jLQ0ZU1WSuE4qYwaSzEM86nQeDYaOyIlcBHef6x
	 o5JQzc6rKDeGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94812CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856519359.6200.18096993567519974432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4aeb2784f554fa2ff146923380bf73dc985e2b2c01138387fa2607dbb79c90
Date: Mon, 22 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758565193
