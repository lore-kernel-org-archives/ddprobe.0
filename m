Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472CB4C6C
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759813794; cv=none; b=ioSPhkOfm+IPqSJKNjd3UQnhAtf8lsuRpNM65kHIpOf7sdN+xo7J03VHLM6HVaDBTbtibX+GUyuPPkeOzBO3ZaITZKgnrktP1CcLh+3teVONB4nmyfjPHGVlcwvZcnZCX5kXZsuaWZCXYHhtYYjvk4ACuKFK29i4iBFAToxPbSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759813794; c=relaxed/simple;
	bh=6eK6jIRDNKVe2xeQB24wWtuMR3gzDZMiZVIngCWKqyE=;
	h=To:Subject:From:Message-Id:Date; b=WZpaz8N09Hj++Wo6sD1dt+hduhgUJa+6ku2yKB+XM4eK2p505vfO/+dgewe4wAseAvnd2bBQ5QbSg9artKrTIk5Gq5Gvz71tFrwgrIx2IwfANHL2nB7UlMNYnAFZQmD+nyB/4lAQBozk7x/IFTVcEh/6ivJ5qy4vu5kVPFkhvsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjBheguE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjBheguE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9155C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759813793;
	bh=6eK6jIRDNKVe2xeQB24wWtuMR3gzDZMiZVIngCWKqyE=;
	h=To:Subject:From:Date:From;
	b=qjBheguECxUZAv6scc8xqlvR5VYzRszsKc8r3FrQVuGcfVpDyDcXDLrfozlxBJdgA
	 VCX4QqGxsQL7lXhkEadi1t1913KB+fqK1IKQ/i/4lFqj2bIYHONrVlqUEjqDKCgvs/
	 Hle+XTad2G0yiLIDEmh7bP5NbO93gYIXhTGwdbmO2bg6seMKBrzxnNI9xmoRmF+37n
	 KE/jvZp7Xa2muERmkjpz3u+m34KDHgl4XqixQRV1bsk/PstoIVU3tXsP9nCNKglfOc
	 wHjR0y9hgZN5d9uAsGAai0utI4IrDjNZep7o3hV7MyvDgbwSj4UJqFeq/YG387Az/e
	 1vYtREA/rNbuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C36CAC5B0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981379358.15622.13609703008229974184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3573a0acad51fb3f1b0c8dedcbea2cbcc58fe4b71b9bb758b0a7222a27d38a95
Date: Tue, 07 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759813793
