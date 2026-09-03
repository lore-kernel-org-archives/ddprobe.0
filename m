Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A76C501F4F
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788466235; cv=none; b=WfWzxYvYlkHMyInU+60qH78V2i+HSvY9F66d+NL+BYKkmpdKCaq41dD9MqEy46JXW36xCdAeUXTvBDRwJXRcA7BrIS7RMeY6A+6zKilwK0N9jNj4qxaMdbdStxNa9KAPAIDdYy9dOcvvQRfFszQyA3ADnD4nNdSzvI9m3TeVIyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788466235; c=relaxed/simple;
	bh=g00/RAeYA3/5L34MUHMjOje0BOj9TkFwLqYRVikSbxg=;
	h=To:Subject:From:Message-Id:Date; b=rWZD9N0JGWxkRd6J0CWV/cpcyxtxWcXMTfPMkGFZAbpb3Lp4yY1p++Rdf0lwQd8eihwQkT8SuG/MUOlHqgP975AVwa/YSlpVNkfXBHebPO6WinVS95F7UUTPiredT+fvqecKUY0PxxoI29uEMJVQ0HazNuhbKSHJHI7LwrDNt8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Md3n5ln1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Md3n5ln1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF2CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788466233;
	bh=g00/RAeYA3/5L34MUHMjOje0BOj9TkFwLqYRVikSbxg=;
	h=To:Subject:From:Date:From;
	b=Md3n5ln1jpLbFdgQ+/4GT6uJ16AKZONPRr6/Ry/7cExsW8Ky5UKlau/hKugpX2oub
	 zXAKT/Ld2O0JtXniA7ohAxpBlnqPmsSOBlwbakcdWEY9YNJsFb9W+qNlK981E4u2U7
	 CQDAD8THMOMnE3S32p/EFnpYurw9VXNCOQufyhvIRHOkMeIoywZ0IOX+hq/RiavI/f
	 h2RDhJHr6uIJ6W5GQCMKx6D3x6zV81CNbprqGBbgSrXM+7Bo/XZDTBvCD8rv36zO/g
	 1xJ3VdOgNiqdCkVvf+es+XblNKLI2Kd6zuDfOcLM8Swn2WXJgyKUvR2kGN00GAaxYl
	 jC+D05N5SecDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC417C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846623369.19596.18067498011708262297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6e066eb4e5451ecd38d5413d9861b1cb1b52fdf061ddffe32fc8f6fcfd8171
Date: Thu, 03 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788466233
