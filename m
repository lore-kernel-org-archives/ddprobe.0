Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264131D1744
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731062154; cv=none; b=jNkaDmSTOVH2Z1805j59tQR7eDBHsQoiAbhpzc3h/2MhemHcNcLdCDzGan1ZVxoXTyUdKYfqmdb5851Z0V074iXa4nujrJD3ZAg/4MnIgjbG+kvr5KTzX4V5gXqg71CbG3vnBwcCMg9A7dUKAXLvhJkIFZyYPXwHy0R63gdR3cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731062154; c=relaxed/simple;
	bh=D+XtqTE2DvJKvwAKPOQHYe2o8yyZGiuQDSQGhKMdRMo=;
	h=To:Subject:From:Message-Id:Date; b=N4bpLYwzKClsDCIV1RD6K/Q4JgHOTb2Gw0joMZhyYP9N/tM89vuwe1LcZthlhXfSvzElrfW8ytGgBxTdstlM1IPTZ+01xb5GqOYnjct4gGmpleLsCjqukCGHYtMuJmZotss+BOkpxPNkC5hruJp8ddOjkd9CCqyAYtbtqHj+GVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riPxnvhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riPxnvhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31FAC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731062153;
	bh=D+XtqTE2DvJKvwAKPOQHYe2o8yyZGiuQDSQGhKMdRMo=;
	h=To:Subject:From:Date:From;
	b=riPxnvhHHfUje75ueqljQlZBbEU2vc3T9XvaLuxCibNqZoWGpRA/xIJNgDACyJhMj
	 yuHbVlmAO3pJrpp6aRVl6u5B/NnetBJsqmGsPP1afm0ruhL6A58AtI1dJbBbcT1oiN
	 gtHJCALI5lXe7E+dJ6TsndjNJ3enK4e77HfdfsnjYrjxC3zWuMpqH5uu4efrlN80zI
	 0QDDbQengdpi6w0ZbtMPww/1qbLGNY76dA/g4j5J+MHmVkvOiMtRBGHF2F5s+8to+a
	 C7WypgvzBmIfV6vOg5hG+L90WitPU7g3GOB17pMuClb+5w3bVuAgPD6WWVZ3sX9hpP
	 9YRiqhrB6uj2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D020D5E155
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173106215363.7744.3167944755811059007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd6ff821ae50484642ec5d9339f1526f578606ec8c37d8011aabc86435eab26
Date: Fri, 08 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731062153
