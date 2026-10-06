Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D836286417
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791246634; cv=none; b=fjjUFjw67N1eymjE9if4+cSN9QVjkiqRQ7DbTgkJQ9/33sLgqknRNLMhwaFmFX4/PYv4WFu8Qg5YUuOfvOPFfDRdeUeMpMFi0iLeg19WX5o96cOmYQmjaERvJ4SVqWNSEqPSDi6Xm+TF4ufTkDZ6vGx+GM5KMgkC3rLucBkKfw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791246634; c=relaxed/simple;
	bh=DWkzWxyr79F3Y5WFiA+8FgRxZ3ndvpfGBbtXtjhcIpg=;
	h=To:Subject:From:Message-Id:Date; b=SjvSEWz87Xv9HQYu3qFEgowIKSopuYX+HE0F91jKDVaXQbm5M+HNgR3xHFsQ3l/jMNs9KmP36BIn8tx3i7me0/pG30BVeJ9/SaR2WWadTxknQWq8to9RclLYciM0ga544Sng+iw8hV2BIMVIbSWI1iDq4ZMG5pzwApjWXKujC4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrTm4C+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrTm4C+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E12C4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791246633;
	bh=DWkzWxyr79F3Y5WFiA+8FgRxZ3ndvpfGBbtXtjhcIpg=;
	h=To:Subject:From:Date:From;
	b=SrTm4C+HTZk7yfxPIFq7Osq4hLluYHzaLW1UrPtoeU9YoLTZ0OrPjwK/gaTmh1Pgn
	 5jE/pQ+ZLeL4c91yZOJDKMdUSIgh67F6x+OcCRXw9LaReiXQ7IODpmTEUdAYWctGT7
	 dU1Bv9+llsmmCEqKTdLW2FoSNjGYR9BwZX+Th/x/RhLkFsWL5aqpbMqe3OEb89zLko
	 +0RIy+8pXCUBYRLbX7heuMqGNXJ3eXmSj/6Xukeh/19PahMJO6jHxLm6WjRfev3Lin
	 Ff7y2s6WjxUCTAfb5zHhEm0RWRBd9M0DXJqTA0hNLUakIciZ5nrfRUVJTJrTHOeTlK
	 /DKEgPZsI1vjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97EACA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124663374.17200.3842418231768598448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882af116b6c744127cc306c0f3608ac06f8780ee3f1a5b41e5137cfd08b7d921
Date: Tue, 06 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791246633
