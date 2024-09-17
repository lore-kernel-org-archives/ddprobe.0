Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D60ABE4F
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726611354; cv=none; b=UXQN5C1aVk5qmd82nzvxbvvYiMuFoL9Ibsbi0BT45os91+j6OH5usjR1ShTNagVilK5vLxnZCQ1cODMSjuIoVokrcMVhuKGoTgBqJ7GlrxKg5oAr7nGvHJKO7uZpbYNwAlwMRsuKmki99ITAjrZFchKkLaZA0TNgOjN1BfT/OZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726611354; c=relaxed/simple;
	bh=tBkVvXINdt/+mwsUceXROuuoBZDJlXiPZXfThH8Y1eY=;
	h=To:Subject:From:Message-Id:Date; b=Ybdcxa0VGYnF9t7qzzynG+bpY5SAY5Dsy15ojnEKsGnn9e/1RKdokJCA6vfoVsUt4fT+JrS0F4IWgqZgfaExrQ4OQidnppf57nfnCFkOpv48hB9ToArLKhgya5YFcea8SAojoJVzAlE4A7nn1z7/0f5Q3cswBtjFfPPEdoSGF9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSMirCGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSMirCGN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA12C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726611353;
	bh=tBkVvXINdt/+mwsUceXROuuoBZDJlXiPZXfThH8Y1eY=;
	h=To:Subject:From:Date:From;
	b=dSMirCGNKChAdQkkJ87YRMn9MMnuerbxVMkSh7DcELm77pB5y+2RGxZq9NXz8lvz5
	 WyoDXbKvrksueW99P7qYAtdrWUpeKw9OXlT9gJnfswjJkWXjru/PGuS79MF6LcxMp8
	 4tlUCIxnHFrc2d8sXqJFE+CJoOpVKAzR8LJ41F1QD1O3eb7ZVaN6XLa1gpZkJe8QKq
	 8ItPhlQOOwZrxUUd6xTC+suMjSbcZ5QJ/QLjjP8K3/T2l220/irEf7alOmypbJaHCl
	 MKsBWXqqWub//jE4iChFMxmnhaH6MWE9QXi92IaQiVyH/a6zP5j0bO9/QCRP2qRCuY
	 u4SWr/o5DPsFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9489BCAC5AA
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172661135360.5713.4762032289331378968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4149cf9560e0f0bf05c17dd4bda1f704874dbcd80e25b86d7d879e0bcf9d4ce
Date: Tue, 17 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726611353
