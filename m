Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351F7289E36
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760125194; cv=none; b=BVWx6Ddam38tqya7U/W6XU2ZciJdju8p/021/BetfaM1mYuzYTIW74udSNnGSCztuOnqXWkWHUuhJsKnpLj7UHDb04awUe8pzoj2AP7NUpkFNpL/4tbRIHTBfv5wsfEyeAvHfDr2OAGkrJNKMZfRv7U6/OZlqjRUPTP47eH5pDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760125194; c=relaxed/simple;
	bh=10QSIKxwnPz35Vr/D/PoxR30HvAiUYFhQiVd/osYvK4=;
	h=To:Subject:From:Message-Id:Date; b=kV4OnqEs+bbQMDsUN5Hvini8VX7JAEU9yfeYKOpXIGirVc3ItoTzC8MpshteUjpOc6bsghIg4NLg+4myZ6gQdYVd/7czNxTeA+WpgcOM/2ahuw7AlGmPaWcUAr/ykpndBW/+XNlremVn39BuMLTK2LFNEukz6OxbUuJfkNzlS4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+D5QeMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+D5QeMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20ACC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760125193;
	bh=10QSIKxwnPz35Vr/D/PoxR30HvAiUYFhQiVd/osYvK4=;
	h=To:Subject:From:Date:From;
	b=W+D5QeMBVbTgKktfvDSdTKw6+PpTxjKuk7ZDEnKwciHgCHvdk2SE0oeKL3T+x8PEk
	 xmHqSFzdfYXp1FduNIty9eV4TJjVH0ifnMIKGIfFlNMvCmdng/WOnK4nVu8NICoBkX
	 9xC5UeJEi9ID5NqdrDZpwgjGEpO4/Q+EC2XEIHnrlDtUxYlDyzwGy50aP+TUx6lUBU
	 tJMjhny0WmJO4kqU774OTMclmF1f0zQ/GqZfw5MICQOS8REpqL1yEkXUaYTduWVqw1
	 +8Vmivq1v9Jd+bGvUYwzPEwCLVk3i/qSd1zG0RjYK5TMjeFTTZq85m3FvhSEcAhbIo
	 ql7FxnUXQ57uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E9CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012519358.20482.2206369825444625750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7435b0bce0fd7571dd88f879a9954a3a87dc352c5c29cf86e706658c639f4f33
Date: Fri, 10 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760125193
