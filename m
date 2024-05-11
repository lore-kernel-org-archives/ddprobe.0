Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710C7802
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715404943; cv=none; b=EnsUv2yfYWBMbOWXKnH+t8RFhL2BAc368Et3E+8xIkFXr9t2RE4Ie4Nn0dkVuq3i4ZclDQw+egUGJgQNxGj8WPCLzcyojYgTvJoPL2DBFUJVhhRickqcG/HRITTFUEzNVes2tHyAbNmTj9Y4ifyFA4C5VPZ7c4tSbZJ5lFP8idw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715404943; c=relaxed/simple;
	bh=p3OMqa0X3vSxRnwZ0MZJ1t1hCZMYX5AD9rDJg/JQkG4=;
	h=To:Subject:From:Message-Id:Date; b=gDjeolBs4O3qWnS100UQyFGsR6hoDkW+meUpWCEg+vv4+Z/Si41LY9qAOfEzoV3NKrP3f6+q6zW21isNb7IY4zphyIYk0yVLkFZEwwLAfhAu950fbqz3LHeeOma30bJSp7Moanr7Bi1DQRvNqVHnQLkSXAfhh6sojBXG6WccCc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyZtOkwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyZtOkwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A63C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715404942;
	bh=p3OMqa0X3vSxRnwZ0MZJ1t1hCZMYX5AD9rDJg/JQkG4=;
	h=To:Subject:From:Date:From;
	b=uyZtOkwt6rGEnTgVJqM1ADy6Cks3wDYyv/o8WU2q6XEXpGWZxaLfnVXGN8m8v6eiv
	 bDmLK7iGCkqMrI4Hwl+sWqZ/SV9hI3B7W8DEW3vHJGn+/45gDBUJWEhF+lYFjDUCT1
	 mdDcTqiUERW7I9FYJjOGBj4f9kckxzSkL0fpRHyK3OmxesWBGlJDbSpsl4yfJnY3x5
	 ov1vd/kIsR7o8RF8Xc818CrUeli+YoTpvqC8/EnRUW82OLFSQ/fflUbkq0LJueehTd
	 gPNaza047XxBgf8nYGXwtA+xymHRwzPfYmJtk8mPleRPpIVC8H1DOeQ7yv+EsgTFLN
	 /3iuAHa3w727A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F60C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171540494277.30425.5004126578981373483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7007127f52a12c0d775377c0cc72f5e23ebed8c28071943e21264ac2b6fa48b4
Date: Sat, 11 May 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715404942
