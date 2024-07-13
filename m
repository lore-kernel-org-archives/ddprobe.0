Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D23538DD6
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720834763; cv=none; b=mDOZ2Na0jmZEaRdBRzMhW3kcsrA1jCQlol0bQCLOfCd6syEBEukUbZSBz/PH+WFHCkNRazdCpSyXJ3xnzjMe225/nv1OAockcBIaeHWWrAwJv+y4WbldWfzcl+Q3iJuYOtZTh7IzdK7QsEqjzP6Or15uLzOH9UMhGbvFQysjYuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720834763; c=relaxed/simple;
	bh=/mn2fIL/MdEkP5mob9NVEYbSzgIRf7El2ZTlm5ERPH8=;
	h=To:Subject:From:Message-Id:Date; b=VFTDvtwPeqTSMQW0mF1vm3VqQim+IusXqjRuiQpd+eclcVmgATsulPXxhDwawV9/b+yjtCPYUcognfha+9H0mkIU9T1Fsx6d2MSukfOU6t3o4ytsEKS+h1n1q0pVkafaLWeFv7ncvnfTvryfLWh8q5RhVKg0UUdYFyiEdBiEVQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObQnhOzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObQnhOzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD2FC32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720834763;
	bh=/mn2fIL/MdEkP5mob9NVEYbSzgIRf7El2ZTlm5ERPH8=;
	h=To:Subject:From:Date:From;
	b=ObQnhOzFKurfkzePX6N3Rsx3LeocBSlMzu4+p5xhNTX9rI7lTBCpMW9HN53x9Lbxk
	 l58Sb8gI5icVQgF9i1vNqSln0O+STx7q4xcheyPRtLPsPWgwjCT0rkqWXsn295Xa2H
	 odZk9oPacKmOivc8/qADdlXUD6is0+MQ9j0NbwHFrPDYRBs+EQNKw1B9/0a0oySlYW
	 tRLQTZ+xlYy17oRyrLQ55lism8wdz/soqcNq2GhbMxFeC53ZlXm534GSq8m7tG2/F5
	 lQEqZtyEliXCSc04xlboJQ/284GUkOtJEhkYkBxSfpMC/bescJweF2lhggJ2ES3ky7
	 4Se+0RbyBYnNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D11DDC2BD09
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 01:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083476282.7161.16558765918430288801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ba074b5fc082f3726fb4f7bae2d05e606b162708005ed4dc529a52a797d4bd
Date: Sat, 13 Jul 2024 01:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720834762
