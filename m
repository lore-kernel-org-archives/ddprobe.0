Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CE7A95C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737135354; cv=none; b=HHQP/s4A7OiSbPOJvAgdCh6yEDFVDc0MVdi6xnHIqgUPt6+8cFOGS9ZRKkqYhiRYaISpPHiB1YM92nEzWGWMRns6jtvo7/s8u8YP6ckXiwTHQSNU4j6xdDcXumIAIXs1x8ckH/gjbbv123h/YRsnk/+xM6eNi/eVxxFPz3j/6R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737135354; c=relaxed/simple;
	bh=RulC//Hy9r+SrQEZMXOX5DIujnCFw3crTnnj25yvWN8=;
	h=To:Subject:From:Message-Id:Date; b=EeRag/wp1Wz0fRgbADu+38WNGsTT/XnGLj/0eOPrkYIU//RG3sk8huJKij7v2gPe+1OqfnaomPOcnnVTmDbhLItTUcSc8ElqJrseX0TloXkYzAk8O4l4esn9Q3RsiW4hACOVyyvJMvhTsOZanbCIZDnN6l22VCRABXp0XoE6Qi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKmibjjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKmibjjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AB3C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737135353;
	bh=RulC//Hy9r+SrQEZMXOX5DIujnCFw3crTnnj25yvWN8=;
	h=To:Subject:From:Date:From;
	b=oKmibjjfKanRwqxyUeT1WrgTlxQhrwOC5HJVWvGk39KtQiK3VDW06lduFUiYaMtZa
	 aeFxwiez6iaAFKen25/J6w5hS1HGabDpHL3xJfqByGV6glVZVFej6hRXrVeL1Z+hlt
	 svkmIQcZMZ79iIfzVvS8F9TLVSR5/T0wPrt/2Sc7Dp9GjSqc3vtkCAgN9Y894kr+gY
	 xX+TNYIizzEQS43/qWp3HX9rtaC9gzNsqYyrvPBChmixVl+/jI65dlxkw4mE+MQ4cL
	 kBQD6bn6HXmQzvNx1TJrkCQ5DFlyGIpI1iln1zoQKWdNU7VDy56BgdBfikrFn9BJTV
	 yiqlm4I5nw4OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965B8C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713535360.11119.2379000504584507047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323e3e0ceef82ec85a7cdbbd3e30954d34899dca6d44f5207cc10526971e2d3e
Date: Fri, 17 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737135353
