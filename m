Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388941A23BE
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757749194; cv=none; b=A+5tO06ifCjZYSNp/0I+0Dd0JSeE0HvvWYkMs/DsfaoN46SswaPz9aAmKinhGabra+QkfRSP3fG2xrRupO0HkJppmNCcuhnXvU7Ikc8/6DoHWSlCH24yVdGzAjU4T1D2BXm20h83cgXB2qNcGZ9aEBMtmOBpJcpjj28QG2UoL3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757749194; c=relaxed/simple;
	bh=sZFv0NGoJD+SojjuZ8ji3baCi50IXUi05LKMuZHe2tc=;
	h=To:Subject:From:Message-Id:Date; b=HWs+bjMqJJRjM0W7GYLX8a1YQLarrVZDVtazssNx6uWBPlVFv6A5iWgVNTUmsmct5WgBueyGr9P+b7MyupBNaInvUtbma27qw8nc4dKYIZ48/3bThz86a34BLk9WpZAfNig+yPy8TpFJ7oa7auRjRPYqQuCFayyDxF/BmL3t/LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvNDz4JA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvNDz4JA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD094C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757749193;
	bh=sZFv0NGoJD+SojjuZ8ji3baCi50IXUi05LKMuZHe2tc=;
	h=To:Subject:From:Date:From;
	b=qvNDz4JAH0mSMrlGoLe2ZW9lF6p6Tcu2UmC9BHSW6WVLB/GcTmtbl9eHPCreN6Wgk
	 vyMK16BmG2jLQ5b1pc6Aw2FuNWdG72mEyy8GqxZBYSOSCa4AJuOhfQHnEu1gmEvQGg
	 4h2TxfVvca36xH3d7bR5jNz1HkfBCd77QCXgqNsLqvn/PYHrnmF6RDEH2FDkZOAecM
	 YbzR1oX3WU0fy12bztXcEQbhxfoi83fOd2iQK73F/2g2FwtnPzf1SVtwB/uENrIrRX
	 1fQdw2fSlA2+TktYH4nusZq3NHJeRqnbBoWYgXWAHu14WqaQ74beceqDYQcyO882Bd
	 OwuMvXfbwGUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977B6CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774919360.27359.18253948859063982090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c0710ffbf14a9eabe9095a27485355c336e09f2ef886e55ca143837e0f71f0
Date: Sat, 13 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757749193
