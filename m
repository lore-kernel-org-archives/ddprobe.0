Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A82F56B7B
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716286403; cv=none; b=NjhdbliohFJqmut3tPUz4i5HE/kCppl6i/u9mhvotaFZiVzjE8CdVfUntQl778sItRYNXkEBrrwRbeszoMj7Pdd3/FqBW6ZOV4RncZ5EQFVCyX5tRD/PYD0WVHQHQ74FDLSOu9Rb24447dNDKqXu5tYJ96FUkkO80K4/JCEhGTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716286403; c=relaxed/simple;
	bh=Xl809yIljizRwSdOEef9K9scq3d+okgg4Z2KqqlTJS8=;
	h=To:Subject:From:Message-Id:Date; b=YwdXhd4IbPhY+OgD3MMhV2o1x9mg9j+lB7myGI98fp+gKfob+SfNDbFE2r4ch+I0FP67Lxr+emXIOakDKSrNyb1iBdKawxBorpRrEokFehZ8BzCyEGwMRM7+qgQFG8D2tj0XlbfIb4ZKWy3lKwHcQ4xPoZirRgIQg61qdzeJ2co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwqcooEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwqcooEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC201C4AF07
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716286402;
	bh=Xl809yIljizRwSdOEef9K9scq3d+okgg4Z2KqqlTJS8=;
	h=To:Subject:From:Date:From;
	b=kwqcooEJRlERRGbgXfn+VqgtEqWDWTaaWW93nH1jLi91wR0VG+Q6k2qcgJYx13G1E
	 9zKdx2+gk0xtF/EZa8Amg1mN5S9eSPMlw1lW6Be/PSRDW6hq69Ba+Za2kM7NWO0VMR
	 1h2wEZBwfpzTE3aydWSMjbsFRjUU5N6xDTXywIRM7d/zQdY2/MXstnCrS1zRzMBqnt
	 q7nQ8xn2pJRUNA+LstG3YrHHhe7yfw3c2vK9Sih6T99Ucq+uyo0nYCr9LCb6FJsZMu
	 ixQL578ZkZc+4muSZNxbZYbzqR0MtaGKbP9MM1mpgka/0EEhUKAMYOTFYxLTK1BiP2
	 02FyrIdTzauMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8B4C25B7A
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171628640276.15541.11832094389995694131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e16fcd666cdfb12842920c47104478dfb5dd65e2da12c7baa64b4842043a5e
Date: Tue, 21 May 2024 10:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716286402
