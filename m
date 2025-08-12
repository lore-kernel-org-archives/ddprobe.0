Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192C32EF646
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755015594; cv=none; b=cL2ampA9r1HIAyMdjsZbQv6RbFK8+qZG/+qk2X3Si4U5OfU3utLDxQViQr8DvbvEXPq1MQAZ+aA5yNJg/8jcbeBSAwiJdOhCc7gAKpVEBzWqR0lucZh49GUZwbX9R7IK7urXszQWOLcAw2uvOA0juwHazQ3tnCx3xco85JIMMWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755015594; c=relaxed/simple;
	bh=+lIs1adL5YQTj1UCp0BiAV7o5l3tmEwk0NQtj7aifU0=;
	h=To:Subject:From:Message-Id:Date; b=RDuN4Uhl/K3IT9xujFoQbuGLack9eQAxwreT3Tt0+vIEinih9sXZOMykxtlcWckux/95LVXNY2uCBxHiNAhDY+E6Hk7f7XbQuqQuUKoB84Y9zs2ki64OUIiwQIS6N/Xa/tqJfZxY6Sr2AIBYNHGDieO5XJGjU+AEO0qejDTNbL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arSpDNWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arSpDNWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC9BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755015593;
	bh=+lIs1adL5YQTj1UCp0BiAV7o5l3tmEwk0NQtj7aifU0=;
	h=To:Subject:From:Date:From;
	b=arSpDNWqrqpU6eoAHSkkFthFP2v7WrikdrmNoBiByiH8YxAE6anPos5C6sOaeQv6/
	 mrCUoIuCeo6qnmqL9AE/ymMKG2EdbdEBx8JDsugHHuXD8ZslRFi5yZnIf2zuJ4Khmr
	 BsQe6j3aFEduf2EiDlv3vzAnTj/8GUubawvHWSlBOivuT8bkDyBZfMprtwjlne/i4D
	 BoWMB3bMmtCHotgcg6bpb0I4kEDMWIL5WlZswqiByayyRMrp8BDB9ZZQkzn2zrOBLx
	 dELYZ6RtOh5yOydffxHIf9k58PAe/GWvuzoVEVCy2wXtYJdK/JHr7n3lk5sKHyzHef
	 7DuT7CPf59GpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E9C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501559357.12107.5128641367004499126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09acd83a2f5c819d5beef60d6b14e8b1d15108f4d3f8eda8aa9f9778404a2af1
Date: Tue, 12 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755015593
