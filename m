Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EB44DB547
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791225034; cv=none; b=hvDflZ7Earpsg6tfZBuWAbQgtskhZSS0GszBhyMQW6MTOvlJ0zBPJMTiNTwqXFGG5PBYV0eOufv4c0ur9qV12DANrZzY5mAvLo9gy09SGbojRjQ+wwG7JNFOWWszh9XyAx105ILDgtRuQH99lejaEFxXZX3JJIUkuGZ+1GlH6U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791225034; c=relaxed/simple;
	bh=0WkvCSo6wj+WOhtOwFWxnrTqFgpc7grKZOG+L7ZpyFg=;
	h=To:Subject:From:Message-Id:Date; b=NbTSA16ZScz8m2WBHVaG5b+G+wPHK/y2Y59CPIGKln6mRxgwWVhYygqldJX01PCHDncGryRaeap61beuUdSpFnv+RItYIqSG/klSqeTHwZzaEQyt8Vi69/LHIxS2E5W7m4oBhfire3yfur+RLN177duC97cBRLoer+go8h6l6Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Monqqb6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Monqqb6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8045C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791225033;
	bh=0WkvCSo6wj+WOhtOwFWxnrTqFgpc7grKZOG+L7ZpyFg=;
	h=To:Subject:From:Date:From;
	b=Monqqb6OJz+8M4uLDyodhaaiTLbxjayOvFGWUnjvrbzZv9eqo9tzBawcoRXGQsErI
	 1dtyrY6CjIFBWbGe2EqeBGc80XgQXsIJGHkC23OUZ3x5d1jDEVPvBQGnrPmp0lrIrn
	 3LUfYgoqoPUqZdy8yxdJR51U6RTHprEYF6QIjgmkE4UGzm0dF50G3bWGh/UR5dB0ew
	 1SfAT8uzm+AzZtJOzvgBkAvb8HaM86ofx+t1oHLZ17spk7k15W67SLK4YWv2bHqGXt
	 R9AzXgIueSQgruKBBZcV/U/5h1PfsM3hYLWpuvx/FUw8eFkSFkbujpM20FEPg0pfqF
	 XLN2v572xzb2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4017CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122503370.16647.15104534778231959868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7597014198c33da5ccfe4e297dbdd6d708a408fff3dcfed4813af2b209abf915
Date: Mon, 05 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791225033
