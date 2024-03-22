Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A2516428
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711095497; cv=none; b=QaAVDBL8H7LUAULdqkWosb6pexY1tDLW7nq69EIgc6R8kjoL8HWarGBQhkzGE1QGlZ4X82Svb9lSTUpSXzLYnh9O1fzBOz/76BKZhZMFWBWrYV+KA7EXSxquVKopN0K6C+U7M7/fHGvimJ99sZrvIyj3n8uGQGQDmjH/w4qkyBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711095497; c=relaxed/simple;
	bh=qtur1Rn+43Q95MXgKP07AQzGkHhgfkvZ/xe007JFcfI=;
	h=To:Subject:From:Message-Id:Date; b=dRgJh+FK72ulacZuWGFhxE4OkKIeEvoQublur6kRJlQgZruIrQYW1Vg/4rr6uL3e5IUKUfbsoZkejsqpl3coUzJ1m9q5G/iRvxQLHC8t8SmoUm+QrzNzwEPpQ+aK2Mle7M43TnkFo5pjzKob1XuGidb6B4udwwIHlGFd2CgJ1sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRygxlp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRygxlp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78700C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711095496;
	bh=qtur1Rn+43Q95MXgKP07AQzGkHhgfkvZ/xe007JFcfI=;
	h=To:Subject:From:Date:From;
	b=TRygxlp66B9ixyDktFHfCpmPHQINGYJwuRQQOeuzOAMaobBvaSKjlEx44VgwZ3aIU
	 mCLTuEYRa7EakbAnhV60vuys1iEB14JP0XTFdLb1WCxsdiPCSSp8+vS9R34iofH6c2
	 JPcG1ds4USJgNJbL09yXZ++UAyJf+2SW7k4f/821waTKTw6fs3SHu/a6fUCddF/wP8
	 wFx1UsHW7gcZ1NyP2lmb+k26RDsfqfO2VP21H9vcOrRRYFXh/GzEXJ6FatERKujfmw
	 Yd2EBUz/Qb5gHt9nIA+oOoU7Rh8uXTXPr/kLC0Q5tBIXMD3RoqS3/sweHsfQz/rI9q
	 26+A1LIJpmn6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A0AC54E71
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171109549641.27385.17376993203577772345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6f97574ecf7ea8b2b9839f64c077d5b73b87c48edfcdc6bbea5d086a1d2679
Date: Fri, 22 Mar 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711095496
