Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E9A1F180C
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742288394; cv=none; b=cjRG4rZnUJffoMYbOijtMZ1mn6QRs5jkagVGNj6tsdVMeKAAYWDaNA/95s1FK/cv5ux6z6s04gBepdJLMhxMgFp6R/bI6TN/8UGyP2HWTxLut1qpCbaOak+tXxWncydyJ0TmywBT8rPjt3z+q7KzhwYoGoFHh9JyYGidOP9ydGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742288394; c=relaxed/simple;
	bh=Dm16rZGRXrzUEgOcvqky0XmlUX6wBvC7KkirfMoIRHg=;
	h=To:Subject:From:Message-Id:Date; b=Oygp1V8AZ5k+pXyE27+J5T7OxhFmiwPA+ImrVlMTqy4fd9WbSAWgcslsmjaT/n+BK0bwfD4GPt+9eX20vNEXnhf8HzE6SXG0zrsOmq+ym4jQkr++gWZ4ARX4UJGTtYvlWeL/YhodVPykpW+8R4ZlXsctMLIJ/IYXjMRWs6lrOAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEVc1m0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEVc1m0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C62C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742288393;
	bh=Dm16rZGRXrzUEgOcvqky0XmlUX6wBvC7KkirfMoIRHg=;
	h=To:Subject:From:Date:From;
	b=DEVc1m0HZArQ2I9L0vBhNDowwb60BeV9hozqIvFPJA7g54O78+jPhBl95AC3YPk7c
	 190rN+xk850qw5erwPBURNyclfSOHswf7kyPv52FfvJTuq5F48uda09HFwtVIo2clT
	 ZQREDk0TSGKzdE5bpats+/M0khEDHT06vtyqFFHPU6kiW9bp2M9+LKra0ZmJdDHN6v
	 +bCgpL7fQlOEoe1W550EycuIdReVpLrc6goH7wjcw2F/5aPWbasm7opqE+NIVyYjhY
	 zOubKJstFCFO4rcQQxc7nhXcaLazZ0679Q46BaEa01T263P8q3SkMB7WUgvjERFTZv
	 AGJog8nTmBEbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24ACC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174228839364.11792.17969048600887540763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e012cf1fcbf378eb165d6948789960dc37541c636ce190d6096d3c01d73290bb
Date: Tue, 18 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742288393
