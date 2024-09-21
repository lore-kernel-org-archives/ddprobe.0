Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D512CA2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726892754; cv=none; b=ks2z9I7aJnbSjdTi+qO+tbkjwEeDyUkcCjyRgcWc14e5NISE3G04k90aWUN5cjXCMB/0EKdBHxGfameJfSZLKJjW4MqxtTyMVkLxk30jU5iQKQ7OvtxG85MYhjECuDMFRe/sJSoBxwXgxPmUnaqOtTvwGjiAaGSQtifv5rbBA8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726892754; c=relaxed/simple;
	bh=CHf+GZfnKMqprJYXn29NN8ZfnDlyjM7+Ip1WQnUxsBc=;
	h=To:Subject:From:Message-Id:Date; b=CMHS1jstiza0hJtseSeYP/GPoTHEAmymY/olV+IOLQV7Y2WKlj2IHyeI322S4+mY6/3jz+vL7+kKWCQCeasuH7KBBVBEu3sxi/Cs9qmnSgdPBrHJGgnbTH1i62M02druGNiOqzESgim5VvzAA8poks6KrH5dVfDhOhCBRAL59f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWjshMn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWjshMn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF03DC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726892753;
	bh=CHf+GZfnKMqprJYXn29NN8ZfnDlyjM7+Ip1WQnUxsBc=;
	h=To:Subject:From:Date:From;
	b=SWjshMn0Oz0AQN4IEiKTR6SothOul1OF/jcYjwqtlmHnwCOtdp2HZ4uIdkaD2ZM7l
	 71pSy+dwbM/4qX/eJbNVWuVPC4PbNoodGN06tcv+dwvqs1OZEwMbY2Q3z6FyVXnB67
	 C+GBpgrmETd+4xJokJ3xHceAqS/h+Uw+scrZi18IJobbawC1hjBkeQeAXq8nzFjgKO
	 Oy6Kl2kWeb6iQeeiAJBWq5+EQH3kIri9KQr7MD1gVGigoN3GMbOyisSW1Mj1zRw8Mg
	 vGkr2K3fAFAcbVR8onT6QsDreNMa5j/BfghO+kh+BxQ2i57Ql1+jXIxxdGwIkZygYM
	 FtCNTXe8/PHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C143CF9C6E
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172689275360.14668.7275212300636677445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c96d3c60185be27198ee8dabd9900cbc8c6ae956ed4c15de640f0a9316c8d5
Date: Sat, 21 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726892753
