Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C21126C05
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759744194; cv=none; b=C7ZesTRCuL4yFDDS9GDNMb7gJg8XumPUPtsBwZ8+xAimQ9bZ37+wfOknHB+KRmR016uWXozexFVB841+MtH0KlK1Nv7adWWprGHo818XxyJG3u6ExZnCjalEBs4jGQ07AcTkfib3MolaXtWopmBIJwQHzJx03+y0aJRzDeidqVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759744194; c=relaxed/simple;
	bh=onNpqzRSIADgvhDPh53/JxNkttk5mg1sS+BxhLS3/vw=;
	h=To:Subject:From:Message-Id:Date; b=YW++fCMzMpAFQ1lxNeaaEiY4Y2/HUchOOqqiszcfEdEfLJgVzQ/6LX6YX/fFfSu1E+Ue2W+QN0hdYhL1neV2T/U5FTZJd2j2S1XpS+Y/HcjL1oC7LJKZV/CE5QfSqJk/CoZQXRxo15ttrROBHHhlQ3RMSxYg9CTh0VAJ6b/WpDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZIIQ3+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZIIQ3+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEE2C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759744193;
	bh=onNpqzRSIADgvhDPh53/JxNkttk5mg1sS+BxhLS3/vw=;
	h=To:Subject:From:Date:From;
	b=hZIIQ3+WPwrMVtOLjdZMWxbjJGzwlLt0gS7E4vItgz039x1UedI/B57ksefwmI5kU
	 oVi9TNfjtlVnse9820+tDTKUf0gsOEGz0fn9AzdiR0DnheS5whAS25ymY7HlzZfx+L
	 SvSuxW8eKrROG8nHZuBPUhq782ic0iliDr5J86q8njN+ArG+QgUSdFLmuVKoPf1wFN
	 V6hszl11a04I1+49UNKPnJeKfIbjN1HmUGRktUgCDuaCZln/X2dcQMVyMgF/oKNYlv
	 TEB5lQuh7VdD8BVSmY9NT1ZC8dVZbWFTrAIVjNLLXWOCdNPr8i2FrXpb9m+XHPDOjZ
	 lOyspsdYMBotw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9053DCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974419358.13821.16965992458312904399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45ff1633ea604c505607af2d81039de7dfad14537b4d17e4b79d6a4b9be38af
Date: Mon, 06 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759744193
