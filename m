Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3061A192B9D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733298954; cv=none; b=sdqzDcWEoirwVEnboobAILD7+iDU5rJvedpyHkmRhRywRifLSMuXefubDwxLKIvgnVfwbi/VCHTJL8n/mE/51dYHNPYfsOeMHhlbcHE+jNIZzvoHR+F/tBvKgWapKXHwBC5GZAySF0jL7tkAj2aIIEpFQD1YsMxbDq73pYYwwFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733298954; c=relaxed/simple;
	bh=Hbf9e9ufLEjN9BDdSRUXOE2PvnhPfEUNBWGIEmfZx+Q=;
	h=To:Subject:From:Message-Id:Date; b=rPN6P6oympq0lsqNvrzqq1yaLtFjNQbK/StYYOn9p+7rZnFiua/9+Dn8QTPk8BQ37oiwa1/n56rFqc/l//xhI7ZyvgNkY4GqHbxM7jh+2QOZJjweV8WUEyHHaNncY5arfqexO7ifDiHYOZtq92wxgXcS6MtOK/fNE3zSREj6D3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byao73wU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byao73wU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E5DC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733298953;
	bh=Hbf9e9ufLEjN9BDdSRUXOE2PvnhPfEUNBWGIEmfZx+Q=;
	h=To:Subject:From:Date:From;
	b=byao73wUZrnrXZRzLmEWbgHxebnABsUVBABRsSeUw62H2piXDvkHs1pm+9dnKcajP
	 iors+UDsqIgRs++QOeSMx1HIMboATvz3EfKzJgPZQMDcwSeen1WL3JF2C0nXlJ275K
	 A1SJajyxSoTTTS+eMyhcBZoF+ZTyuyDBL6BqR64XlqhSH8REI/WY6LRW3Gsx0GLaa1
	 2tJoj1LcLkk1wQk25f87nR65BoLQYbLzzlGxx2fA6NlO7P5FoQGa4klC7EfR4deHzf
	 EAMOKh/Zz3k0qoJ6wsGsGGsKB2w0Xn3CyVqBTnSspdcqcQAOEzzjna6lMLCydaJ/om
	 EgKAMOsnzwGjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96879E7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173329895360.6884.5666300295617425705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2a15ff707d1de89f794c4284ccd40339aa4d24bb3de40e88815cca64e92059
Date: Wed, 04 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733298953
