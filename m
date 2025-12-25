Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4757C824BD
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766673234; cv=none; b=E6D1RadNnWAMe9CqVWt1cBVmigmh49QSyv4BSX2jsHJbKOSKfURBwO7GrESn1KzPmIWU8FUFazPT7qjXS8dd7T1CfUXZqrT7Tv374ravop2m679yVrpcTzYk/dwmt+ziYbMdx7ODhcy0Z9LZynVy8uJxUG1BM4aTi4lVRfuqp1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766673234; c=relaxed/simple;
	bh=4VB1zXoxxsdMFi7VVbqcMtojcceLc2Qa/2+zglhibEI=;
	h=To:Subject:From:Message-Id:Date; b=JoYwRuapKAsSkyYB/+sXIYDmbuwRImEG1Z2M/pQQ1hxKLoD83347ni5RsMh+Zyhb76T4EgUDUiafdqTpD7pK+bH0k7030yqirkBwBWn0VUnl38JvRSl66YJAIqNZo1qoH6ZNPbfS3vgseRVECl1vzUcvskfMFFRwxqbJGE4kd2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+pxCU2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+pxCU2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AA7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766673233;
	bh=4VB1zXoxxsdMFi7VVbqcMtojcceLc2Qa/2+zglhibEI=;
	h=To:Subject:From:Date:From;
	b=O+pxCU2iQ5CN6G+R2hq7AuHSXXSxJo4JaboZudXu0OKIGFxkdH7O6ar6kTI9t1hIQ
	 sEDnJovjr8ovHb+04n52P5i4KsAottCoqY2ZMtvVClD2zo0hke/HzjL0cnQg4BtYJY
	 HlCyMFJJE+zYeHeS53/EsHD8lOFzqITE0SbAGXNuhrkezPpcdbdtWLb1wpeMtklrss
	 o2i5MQ7iI1XBI4Ik3F6cc6NPkp38yBkmy6VCLxO8OE7S/CQ8bVrIAwlpqAMZMN/pt/
	 M1W65KdBkPSRfh0D/Q9GnX2TislVh7VLo86BA9SsAm5NPs8sC1Grl/5XWL1eekE/ih
	 VJwvhYLnlAGdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942EDE7AD44
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667323359.26374.10362379060765353048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3879a1a9dd956f9c2a47d7fcaa3bb8d8e8cdad76845ad57e301ff937183879
Date: Thu, 25 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766673233
