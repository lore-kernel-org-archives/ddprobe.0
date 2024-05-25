Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E4D634E2
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716650063; cv=none; b=iPZ9WlZBgmZAcUpRbCVo3Md97D3Ql/b+jxJi8GfU4fwzo0zC5Cksp4C6wzzis7vmhJ6ECzlboRI7SGPITcnp5SCTqyDscgVrtM1IO0gzPPoaRLEZhKayZP/ahMZsww/Z78gFBUyo+9Gp48027fMSkCaVW9+PFZd02W9RtnPrWz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716650063; c=relaxed/simple;
	bh=QSTfE9/IL/SVxfD2WXOXlLAY4wbPbwQQA8Wx+pWQrbQ=;
	h=To:Subject:From:Message-Id:Date; b=Jva4Jjzud6JzXzNxabnwNVVbezdEGHN1cAAwUUzYrNCL8SuisOCEVYOeBgrNNOWAtvpeITrdLqlrAnYp2NW2UHj0f7AHkcHikpAMd6Qd9BVBiUmmMKu1UFZL5H192KVjaL6Qy0CS+N8mhoVd0/RglGQBr39b0B8Eib+VI3Bsl1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWfgFGOU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWfgFGOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63A1C32786
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716650062;
	bh=QSTfE9/IL/SVxfD2WXOXlLAY4wbPbwQQA8Wx+pWQrbQ=;
	h=To:Subject:From:Date:From;
	b=FWfgFGOUMnndgvqdcyievV5gXBPvVbK9LW7ktJCFJoE7v4ClLTuBvC5GjyvN9XBde
	 uogO6ePamMb1dwqeHSd4n3a6HEYSVi8l8AsqDKkmivSpZGRT6RlgH7/ns7IxVQMRqD
	 5+zEeDewmmOlMzAsNnS9GNsiXRCt/LaDnZyFLuJEebOIL033+7fw9jxqMrceJ3yTCH
	 TwACdf6oxhBSIPgfc8/uYbOVthafmWKhgpju9tqHU93wNXAkYq8je6pj6JBNde99k6
	 +b17u3Yfpsy4OM06nbnkR1Ae+GlKGDbhJMxWn6cyF4uxuqDuY5JdrZFQbxfb+Ddzdo
	 rZ/QCq1Q4h9Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5576C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665006276.32568.6044095876328171257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ac5cb1b6660eaf49af8bed126f3314d37b5803d050ff8734ea070640aaa38e
Date: Sat, 25 May 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716650062
