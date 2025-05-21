Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372E0171D2
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747787395; cv=none; b=chonbqEM3LRsmNby9NePOHEzM2///JSVTU/8ERKblaAa5Uqbu8bapODuaPBAF0oRooAUDaO85O78KG9D9XJ1S8G9547WyGrbQewSjc+5mIS8+oXDwwFhOTkwwHVs6RWOCcRNUwSom6HGJmx/JpxqkwzvFAy5QEBp8d4wgoXe9ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747787395; c=relaxed/simple;
	bh=LHfqkUgRopnKS+FIKhHVEZsCubSEWrmq76fi2io1CeY=;
	h=To:Subject:From:Message-Id:Date; b=V8u3pN93czcEZLkTv0VQ2aMg0EzKX2LgPOPWhz+rpdizLjbHok109/ZhYaOzLjyxepsB5YZam8x/vMLMqp1g+YJoJ3vIy2Wb3Q6dxHQlUSZU5H1DT5gJ2VNRr76KUKbOMvzST6cVrlO2mZAg3onH9xRNpwpDfMOHjXIvkacxDYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lF0wU3IT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lF0wU3IT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8BBC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747787393;
	bh=LHfqkUgRopnKS+FIKhHVEZsCubSEWrmq76fi2io1CeY=;
	h=To:Subject:From:Date:From;
	b=lF0wU3ITb2qw+bFxg8JrH8fOzg3FbJ/0BNx1LCevFqogUIbX/mi3e0/MUDAx0A7Ye
	 xf+YYnxyCgCMacYN4lBfeilx3Emnzaa4M3P4KmfBh5llrpvwzpxWLYX25hnL0hJy6W
	 qGEnac345r/MboRFIFO6aY1eLb7D5wEQSWk2IKbIGR2e52gfYYmraIYg2lLBiA4Tcc
	 Syl4K5XG3br9K2Slg3XWDy1LD10uBPHqSziobku5vHEroLfWKYvhL/9BvUCsO5ie/+
	 j7oPXEP/Xg0oMuOrczzN9YQauU3Kyrdd6OASHqUCtONs6VxNF+zo247BQ6T8dcpvIE
	 aZejXL8+Red3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB5FC3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778739357.4353.11947697655482772096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e19feddf6b3f9523ec4151f01deca7f27516f958f3a739556be344b3508428
Date: Wed, 21 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747787393
