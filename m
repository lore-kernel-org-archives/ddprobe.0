Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D34423959D
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752084594; cv=none; b=YMVg5ARVlCln22X5yF/DiMkcZdSp8ejzf7cEfuABwnih3OvCK/KMokkp4kP+X3lfnDMXuSlhCO7AqQBu1xF6Zto0UB3G1IlHjILaz8myrL8H7EctATh3ryNEYTzpjedaUBhTY9UWUbOyUU9jkmhzqyq0CtWxQnRtMYY1WsBLz5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752084594; c=relaxed/simple;
	bh=3jFITkcfFrt8ABPEoYqbqawjm7dP3Xvh/lxKiJqlA58=;
	h=To:Subject:From:Message-Id:Date; b=hWCl385JtNxKn8CgDt05Exdr6cRj4laPu/bK0JfExeoh0fuF77wYeWVnnWNEjH4zD5TrI0rtUHQ0gziqX0//rVSlsnqrikf4y+vCRA4OIMeWFOdnClxAEois0thuztwp2uBryPC0Njmz7ZD5sVl1VFPutCmU4ygV68AbLgChbns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjUydYIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjUydYIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFF4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752084593;
	bh=3jFITkcfFrt8ABPEoYqbqawjm7dP3Xvh/lxKiJqlA58=;
	h=To:Subject:From:Date:From;
	b=PjUydYIN2+H7KcDv3FkuYqbShDsFNOLKbkC9Vo2StVaM/glIvspPZvLg0I3amoJKa
	 ui8HC3vrlzcMZnxNoDyXSytubZeQfPxJDiRC41MkjKuaqkW9VprdrCRAi99ZUevjsj
	 biH20hF9jxCoqKi2pOBpgtQhU1dtckiHoaMahq82Dpct4Is4aNpSo2t66EuRGUTIc1
	 B2JWVD2eUre+RzDDY/SkShdgh0iUaH+ql1e2eqvsnwGO3tRA+/wamF4bpuDWCtGR/X
	 ibAhzhW9/PXK+cFdoBDUOsrVcuom6BbqAd1DTlFOPyoRQlpp3hUChQWQ8Ig9UxN0iy
	 BGKlMg5zs4P1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F946C83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208459358.10989.1407551586452808060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af97f83ede631b1ede2c63c415135d5859b51ea3824f71a6c053ef6dae4581be
Date: Wed, 09 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752084593
