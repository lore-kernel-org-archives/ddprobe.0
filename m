Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BE822257F
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744103394; cv=none; b=spywQ7eEbaqIzbeCRHw3wHT8YJCz+huj/Ygz88vRlJEsmqGHIgcsyg2UgnsLAyJw4EfHWSCHL6NOdHYqeLM/rcHEKcB1gx8HGv9l6DbWoyLVWEBsRr+8PO+DaKhtFYdDTX547HsxsahchFgEOXSCG8IrJRLsY3vuMTev818EoRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744103394; c=relaxed/simple;
	bh=FhTE2AOS0y1XRWNk+sHDwHaZS/+x93p9On0Bvi/CO1I=;
	h=To:Subject:From:Message-Id:Date; b=uEl97RzND0hl32xzq925Kx5EBSNwvC8Wz/H1GLBn3YhCdWxnceAt/PsyaVScCdBfEVwqUEAxSe+buz6kWqogZf3Q3i37pwyFzffuw4k7+G0bODSAHWuTpylw5asUxnRf7uCIs2n8vDMZ+81kdVxnOPXAVCrU74NQVYmid31RjuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8clRrHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8clRrHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76FCC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744103393;
	bh=FhTE2AOS0y1XRWNk+sHDwHaZS/+x93p9On0Bvi/CO1I=;
	h=To:Subject:From:Date:From;
	b=E8clRrHPQsMsqAODxtHlqtFWK4PuoiNzJLOf+9ZKquWQ7apRGGHA5naMFgNq0C9KH
	 7p3jNutvOjdE0AHh455VeCndR2WzTgqM5+zUkb+V6qWfz2FAisPjVsbaIYdl3S6QJ9
	 5y3Ck7IqcrUPwnL6nEqUxFz2hu8ccYPhTyKfnYzxGnzz9vhRD4PzcBKivJugX80K5P
	 6bFrLoXkSK3GFvJdw/DKP+axxVau05QYBQuSpTwVcvIbxy8/dCrXuH5mlz4voyorYy
	 nyvioOaGlET63w1nHzwJoV7ghqaV/ZTIYggFxWkUYiK+eXPuxP4OYVEMPM/shaF4tD
	 fqRr+SEv5jswA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BADC3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410339361.4333.12931377781979732447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce1250fe960b2f35056c14519f29b6c2dba30cb63742a14cb99345ec5389a3b
Date: Tue, 08 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744103393
