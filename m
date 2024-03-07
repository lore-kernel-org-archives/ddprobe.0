Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F004212881C
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709815097; cv=none; b=nkfjJpDFnLBvL+6JhzfzLIv3TiHk7tTgix6ABEM+KioTkJPJ4VyJVGGXUyXQu1R1yQtu71nJzyky6M3ZcyA0n35LKHq52vnJdvOYo0Z3L0B6lcD0YQY7PX7/iBCBh7izWbxjt3QRyr3wZUN4lDERkQ2FzhF+TirthKfWxoWauqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709815097; c=relaxed/simple;
	bh=FZ26yEHJl5ayw9C4vCn0yzhMzPiT2UwnwueMrAPsgkY=;
	h=To:Subject:From:Message-Id:Date; b=JH7LW4ZkkcsrpGO436FJLbHiknyjWUmBIJQ2wmgaC02vVzImJ6E3fS9lt1aIbDOLSvzqdBzXaKeqr9Vh3FOBy4aw4uAbnTyjv7qGNg6TyQVKLK4CnMG39IHFKPNOuQpHrRcArlcNNyCs0JkHq45rckruSnn74fD61XUwQKrkqrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNUQNXO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNUQNXO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779DDC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709815096;
	bh=FZ26yEHJl5ayw9C4vCn0yzhMzPiT2UwnwueMrAPsgkY=;
	h=To:Subject:From:Date:From;
	b=CNUQNXO6iCru+yD1+S7RQ2ZJ/5lYSAZi33RxF7cfHEysXBy0FO2MvhHENbtYyeCfy
	 6bIfSLF4E43XHZ0QpGjYZTrzz+qq/52M9nGbkdwXqeyCsPbpEMMltW+RXGeU2HJGRM
	 H8/if+T9Mza02rPG0SHPO1UdCBBaT0NbbgdLlPMr0ieuNHIQgOcC4ruaN5/698Cm7u
	 PHLFOImBQEpv6A8SG5uZyxzayOBK9ggy3yjGOWMKJiVwYy4BgURIsZvdcsvrV4Y0Xv
	 PzIkA1cDeuPSVSk5TGnieq6Sy1u+bLr6O4YUnJOT2AOYv6o8d4IYoPaRPrWBL6zEQx
	 3kaWUKkCvsCAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEC6C54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170981509637.13844.17766870859302990839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d547dc6beacfc8768df359f7681115192c5bf0fdcfe354d44446f6cb7d25c0
Date: Thu, 07 Mar 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709815096
