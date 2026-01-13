Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010C136657B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768286634; cv=none; b=CfEocll+dbk6LPbxtcaf966PYfEfc/FdkYhLBZy1dfJVtYw3JnuuIzjpbRqUPd0QhkJDaqMkg7kftIobYoY7c4ljZlqo55asQFFXysnjS4iI0SgkDmMMi1Pg7Axys4psAFP5vXxRrB4lvoDJ3zI2yHvPh9clAGXAvjULZbuMqRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768286634; c=relaxed/simple;
	bh=3SvG9v35KtG1RCJGByBimz9jLpjmlM9SWjIwN1SzNNM=;
	h=To:Subject:From:Message-Id:Date; b=mni9jO55YcALkyxx5I1SfhvjtK9acJJbCyuhdPv0xf8G/Q3K4ptldCg+aiGHGRzJc4Nz2W5xOQzX7QwK6KigTfWShkH+YXDkQGVRB78JnjPzcQpU1BOQ5b4y0Z601/6yN2Q9ndN78jO26eOm0GdYO0hpo/YylXexa9z+2YV6qKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyUDGVtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyUDGVtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C10C19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768286633;
	bh=3SvG9v35KtG1RCJGByBimz9jLpjmlM9SWjIwN1SzNNM=;
	h=To:Subject:From:Date:From;
	b=jyUDGVtttYdfKMI4m8dQliBuVFUfJy5JAIwNOGiZFBYpSVNVuz/nq850xEvWvggMw
	 K/YGThpxlKE8PtkcElP+TFoEhHa3mYrHgFiT1ovaWjfwSesCV3Ug5hDKsh/uzwSy5I
	 06h3Aukq5JUdYPoxzGOaEIWbFccgscZBFlxbaLc+NbX4hvQf0/WfbCtyVYZ97FQ0R4
	 KHrMJCHgMfnPUcS3KWmGIFSQgSrk9XJ/keW02NojiIUA6xxbnrRIrTN71emsxGmVxR
	 0hN+XWyz7Ih7fxYKF9vP2iF68i3lKvcyRq8aJq7g9C4S3MtIhntfKTo+hhSHP+HEms
	 AUZoydNseNeBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90228D29DC3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828663358.5595.15595863205531941071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b8b9bc55bf52353aff5d63525c67554febf0df77890877bd0cbf0bde0001b3
Date: Tue, 13 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768286633
