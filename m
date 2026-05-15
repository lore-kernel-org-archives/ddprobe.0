Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2FC3B9D96
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778860834; cv=none; b=M0FEpQM0qJMxOKjpWqhxgSF0lhpdNCwM6xm54Ejwx8kKLZrMtsuFQRP9pZAXM28/fqeJjmqJuOTJVum7wxNGFQEDnyfqjIsdCyHi77FJ4aSwW8KAO2YULBLbz6nLDcqFUQwoLvPwK++NOety1BoW5HkrryWn0ZrMyBAqJa0A2Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778860834; c=relaxed/simple;
	bh=sqJNrAKIkImDh6Ut5L2nD8TRMEGxPvq8JHxZ8i8jQGg=;
	h=To:Subject:From:Message-Id:Date; b=O51zzMDxylzXQD/cpXXcWiwbbPRpkNEuARL3B7GVre8ii+mPB+oAmCLp96TAMya5ujAaXLNfyQNjDrnZ+ktnGtiulWrCbas+dEOtM8Gci/8K9FZK5g3VLT1J1gXOepqkiYZDoH3vIy4BIGIheG5mjlIrirxdYrjPLEK8ZBBBZMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAJ0kMse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAJ0kMse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC6CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778860833;
	bh=sqJNrAKIkImDh6Ut5L2nD8TRMEGxPvq8JHxZ8i8jQGg=;
	h=To:Subject:From:Date:From;
	b=pAJ0kMseJ1nC8pYFYfPfV9i1fyDy0DA3Pft8pjXOKiJIQUrzIxVIrCrv6lvHpVJwr
	 hERLcXdTjgXLOhM00XetbKAkXibk4gaYb1WpSw1W7qXfdA6TST9yYkjtow+PEz5ln9
	 WOEyVdwmRdRpLnLvhwI6bKaQRN1RaYZz8yMvIQcot+CT7JOvi6K1L2uoN0ArYPg8i2
	 dJE8DC16+9xIpNxfRsRGHrsmMhhJz027dIbgiXs+aqyqvhFy4HiAYW0MagC0DVurVu
	 W+39/j/iEf0sLAi2ezoDsezfcvoTGlFdp1ycSRQo7b+PlQ1IRNQlBU1FCcLW2rtuUk
	 6G3OqWfad/y/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA658CD4F47
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886083375.30558.17848695937652219554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f05d6c2717ca646df7605ae39729709da6a719e4f7d2a553c6be4c348c43f3
Date: Fri, 15 May 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778860833
