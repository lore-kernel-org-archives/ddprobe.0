Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EF9310764
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758560394; cv=none; b=KIue8L1xBII6YAvGDcx+PIAo94vc7d3kJdfNtuBZnalvoavMEF59qPNxX7LqnVQHrSqx/iI1U6uqk2fc3EcYYtbVGyi6ZNvkWq7hm7tEU/ir5PA09XPtGSjiMIXyGcSjcFsKEEPmhJbDGx7Zibiqmi4/0saDhaRBwnC1quCapVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758560394; c=relaxed/simple;
	bh=Yn277J3vzscItgf2qj6Ht7Ei/iTWDrCXtw6i9KisfNk=;
	h=To:Subject:From:Message-Id:Date; b=KrWgxcy92r+pBkGKAYELGX79AQs3s8HQPrB18AZZ3lBAaQIKhf23lWRBoiOE/eaJlHTVTvUqhWO0b6NS4f7Y7AbpDYuhIW1TrEf8ftT4FSmIyi2chlqoFb6fkDJHtHikpJjs9S1HlCB6CvY/Z6olHblHc6iRdXmV0MilZpca2vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDVRPnz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDVRPnz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1992C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758560393;
	bh=Yn277J3vzscItgf2qj6Ht7Ei/iTWDrCXtw6i9KisfNk=;
	h=To:Subject:From:Date:From;
	b=ZDVRPnz1YieVz18knA9gOVQcT9b7wq4QDLcRkn0dWofYF5w0BZH+15A8iAtnj2+TB
	 ObppjS3OFm1CbXwEIs4pBJOXwEWquq3UwdTp33hJFd+zNKKKxykBp7PCjmVcKd1r0E
	 FIuMAAriQR7wv/T6LCtplpMYIf5RsBKNGkE8sTHW4C7ws/uczm1YgWnpsKoywudsM2
	 l1khJn4y8szIxQQzrrW1wARoIn+y5i6YsfE8qooCJhV7lFe37asc33Cvq8ySTnbwod
	 8JBTmQAuD8cQhiI/ilxVc6/3OCT2uGhYryj3DUenPGSd60y0AgqF6ryUeMyLUPeMFw
	 LBjqIk9kidQeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CACAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856039358.21969.13026119637593639410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32390342e1fcee596ddea9c69fb844cfe4616459423e510fe5ed6158a51d4d3b
Date: Mon, 22 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758560393
