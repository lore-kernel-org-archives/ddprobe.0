Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799C318396C
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717061663; cv=none; b=amdLSEWe9z3GgV7+1bIvGwGvHn+gcEBJ3YNuSWhbU4XHcxGC/oLoekFnSUkswNWRk5hwfCL0OVc4LGSq9jTdiIfX0QOUNSv4vFgPVuGlvshWwmFWT3zgERymxfaAfiMJZWufrdvPO6CfJTrKsqmkflcOPD9gRsEeDZoRxs6rbGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717061663; c=relaxed/simple;
	bh=poKLC/dr9yeRi91ka5GJeRuKWuJAb9LJorWyv9y9wHc=;
	h=To:Subject:From:Message-Id:Date; b=QN9+gScZycvfV9m00mUsJ3EuuCEz+g8LTojodapMiq5IrlXw41JrEoTHxIEHA3731gU4ZGODi2eb/ReAsEk6OCiN2r3k/65qpKf3hrGe60AJbhvs1gdoofQTbBd32arLskRDD1pS19bpJLvyC6opbRLf8U3MGBp9f58ZKThPlAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jv0Oz7No; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jv0Oz7No"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 091FDC32786
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717061663;
	bh=poKLC/dr9yeRi91ka5GJeRuKWuJAb9LJorWyv9y9wHc=;
	h=To:Subject:From:Date:From;
	b=Jv0Oz7NobIKIvRas6n8aoGFm0s5+MA6KQBgUUCzUO/OOpfqPR6DZiXs2eBNkGvEf+
	 wNzww1M791kOPtYxFkKnbBxqYFYnoCfF+EU3cQT0sE6TBXb9yTYrnPVKwLweRuJN6G
	 5wr+dwb4fbsHu5MV0bFtAmmg6AUWIWYANAmvhSyktzRPAmAJz4gpj+FnTRwzsLWGWa
	 7Ayl+1rL3ZRv6RPSAHK9SUsxxzffuXF5dFLHgoB4SP/85DEQqsip19d4lM32DpwVn2
	 CNdLEdjuEKq/03l2BKfKN9dvIR7ixnHrpOHo/1pBEIwXHppqDEvBzwXfD806Ufnrzj
	 m9j8E8v7IjJUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E62D7C25B7E
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171706166292.18463.11116042770936060126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80e2f04611b84cede377ab9bbd41c96037e886fec114e5258c8de7b56169442
Date: Thu, 30 May 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717061662
