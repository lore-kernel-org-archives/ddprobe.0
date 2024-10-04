Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2942112EBE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728035154; cv=none; b=JZ70G6oTGcEzFi+U3BQLyhey7N8ryO9BROsYV9IVsaFpBt7pWQeK68PukndgP6Rg70rNJ0jBjKowh1O7wn+oDiz/z+QC262F47F+/XN4FZdhiL97kbDk5LjfQ9J+8Z9bKceellBVp+XXL0eJpQk72bEbVGAsBMYrZD1ukjnRiLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728035154; c=relaxed/simple;
	bh=wQpByJMqc6Pd/QecT48sKCYnZ7+8TGCkeNrvXzn4ybY=;
	h=To:Subject:From:Message-Id:Date; b=r801lzXas9Qd4OaP1gVS57OnJ+uGc7cUXj4TiBCRFE5/6GE96Nof7Ga3Jr1pyzZ6YPRyNth1225lIqfpEO0WTi2cC3+2sIYXJZJmrQ2+oHEUZyuvU5oTtPkbMkWA02weyJ61RttLisJdeCAPBYq67D6nmbq0BnRpB7losmrbBaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJs1rwx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJs1rwx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBA2C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728035153;
	bh=wQpByJMqc6Pd/QecT48sKCYnZ7+8TGCkeNrvXzn4ybY=;
	h=To:Subject:From:Date:From;
	b=IJs1rwx5W4xD76g7IPdmAs9nc+zuf4aCHZfFrs3OPPehu1Du8KcbFINYJbtyZ3MEI
	 1kZU72W8rBFClppjlq2vJl3/fS0MkQzGKKGH0kNxgFJkPMiMmVObmNUhh/61MKnYRV
	 eaS0CMxEpQdyoahc7BB1VRZDF3Q/VGV7pSHTKmkz2rhS54z0TyVYZVVfs4dwqfpSWk
	 2tL9FQ2E1EX1tQSBAzCEZVzGdt3aHW0QOKiW55T/xAGMBHKpCaZTkYlUhWPNMMJR5Q
	 ryyHfEH1wxRM2y2pxmXzFXxnNCHLaxPkRWgMS8weVwAz8gXtvJDhSugT3gtnN1bWlb
	 /xPaatVijVzIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7E5CFA74C
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803515362.25490.3253397209929250218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe58fd6df00ec7371df98d25cecce09780aa32bc827a395b37e1e3b101de228e
Date: Fri, 04 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728035153
