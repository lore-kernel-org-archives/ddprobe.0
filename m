Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8F213D539
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724408154; cv=none; b=Gu/7r8j47cpjH676wNdUYQ10L4/IHYEGn5+cZV41py4goF+kix4IK+7N50ERxppZPXwe/vz2+O9ymzQ9xndl1KGQtOKwNOVbh0zDq6CsYgUa22ZC3+HJWAw8qtaxD8HEAdHXI/qvTNJoFloWsBu/n//pspIVIHgcUNJwrU7Jiyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724408154; c=relaxed/simple;
	bh=bB5svSuSiCFzm0JUeU3rQZmVTPJslEjCzu1cwlGsrms=;
	h=To:Subject:From:Message-Id:Date; b=RA06i1Bz9KspSJu1h6DAkSl5JYhg3IT0lJpY13I17AE3f00sIyT6zMyMwkrcbRkpt62koq/M/hdU8J5azCUBSvx7lOXybTq/RIUR6HIAaBDhSsXy0dyIDN5UYbEcElfcwBmd9NgBEAyppxjrk54M7cWY3Pqv4CQhSDy7BDghHE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6wiR4J5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6wiR4J5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAC1C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724408153;
	bh=bB5svSuSiCFzm0JUeU3rQZmVTPJslEjCzu1cwlGsrms=;
	h=To:Subject:From:Date:From;
	b=q6wiR4J5r5dT5MTatVFoQ3Q8P8oSPVbPcrh5CAXa5LzcIB9gzdZkoh5KjT4bb8D6b
	 fGb+gT1SNvuVzQJ8F9kiTPxvty9bJNhU6mwrkHEioyHgvOcKPKP/6xOB3mSzHd2CTc
	 tGW95s/qsgzSg0ctriDSXcM7etFtgEHkc7qSpSTiaYEtF/vrh5WETfed8iBaMH2JDi
	 BDU4cKJF9DwV+bgwxdlc8nNUluWgDn1+lzd7X86WwL87tX2JL/rVn40Yb9lFQaCvJ2
	 /2ndoPvgKbBzUC3Kmj3iPY2kzgtc12mNVp2zTbOZr1suV9EqwQy39oLfdJxh9jxRst
	 9YClLNHE6FfWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969F5C5472C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172440815360.29506.14439978306681206141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7158adbf300e0bab30c83055bf7961dd3b9ef4376026b06e5cff998c7263f7bf
Date: Fri, 23 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724408153
