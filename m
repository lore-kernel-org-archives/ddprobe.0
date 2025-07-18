Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F31E1E9B19
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752820194; cv=none; b=h79CHd9v+jzfz7eWjyuzegH2iyURgMD4YyCA/ms1eTkI7PQZP1nOkjNHSe53w9uc+hYOf11h7C5BJJEQZnkQHGIO5pDt/qBaw50JK+RpNC3XizXbvZVcg7p6EYcXuhl1NONFJo1Hz3QyAJygy3ru/amrdb/6x/z3K+W2lvUizwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752820194; c=relaxed/simple;
	bh=WwOEy6W177v4xOmG/kFtkh6R2UfjwlK+LDI3EvYl08s=;
	h=To:Subject:From:Message-Id:Date; b=oTHk4yvJscmDe9tppIYE7TY0+5bn2qFEQmrCRaozaNipow9KzUo1nGZiVfZP6cVZFxStBmOgBFhgRdsLgEdA8n/YiUlLhzF4Ry0qWzAQFRScBa7ih5wYCnUCSKThfPyIC9kVFZ2IorSvFnzPjT592ds7MQbQZZopAKrI+Bzr5MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQUjZIdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQUjZIdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3788C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752820193;
	bh=WwOEy6W177v4xOmG/kFtkh6R2UfjwlK+LDI3EvYl08s=;
	h=To:Subject:From:Date:From;
	b=SQUjZIdwIyK9jrMHoUkK6eghFPIIWKFl5mkir2De18GnALt85ZM+WZ1XAcUkzKuAl
	 S0J7C10VqDSHizLaFtgfE5iwrTlJOSgOP+49dht46XAg501bLGzuRvdRYT16e1S3Cc
	 dke2DpOyQ5QU8On6JlqPEFwLzQsn9/8OHd7vGXUzPoqXOl4JWwjH4vAuJ9WhYp8LJw
	 lV9EM0opVWI5tT5sI6VMgmlEUGPUSaHJh9HxZQh87t9QwTrFbpJphINFGv91XzLnyk
	 JZl9RB27hmtFOKPeRdobWL8wvLaOvhrH9OR5EQy66EW0PrMUMVwzWqcWeLibgRwofm
	 3gosg/qLsI4bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C3C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282019358.30455.6013144769725439317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7603fbd911c354abcbb13af664e2e02a8978f370a39de609b9e66f499223c1cb
Date: Fri, 18 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752820193
