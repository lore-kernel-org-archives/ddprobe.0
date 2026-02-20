Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C2636605B
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771610694; cv=none; b=T/0zob5jQfAje0kSviV8lHQWjBXAItg6PrvF7hVnwLQ1e9b3lQlRvPG2sywnIZJlhR8zCT2Z6YbOFv/8LGldFhJc9KVe/iIVa77+dmwy6HvHjK4l9BKSxn6MrGyfkeZNpno4BBC1oTdcV8dAFuQr/kuZmSZSsriC6bYmY/lba8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771610694; c=relaxed/simple;
	bh=c+EJR/IAWWBy9bJhbYpnjMhAj1z76v0ToVFDzF4jHC0=;
	h=To:Subject:From:Message-Id:Date; b=HY0xfOZ9FxieKRdZ8YPW1GWl2lq7OOA7440ic4Te+Ua6ikb8BuYx/Uv2W30xkyJCV1PTwP+RNNHda+6qNXGXaoAEdnfheBg50FpCLJkz6sZf0MbMV42lI+ptz8VRZsDYBJ2YY7WsXgDotEa177E0VFEFBHyegEm4+aK6f4wRcd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2ae5QG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2ae5QG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A837BC19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771610693;
	bh=c+EJR/IAWWBy9bJhbYpnjMhAj1z76v0ToVFDzF4jHC0=;
	h=To:Subject:From:Date:From;
	b=p2ae5QG14UWuwWZ/bBz6miVclBdJk5W8Lo+T7L5ypxEfL7heNhGwbwpDfByos3qq1
	 JIysbl3eND+S0gfjVWX0xENJfjo35N6fS5zbGxu4LTs3hkqy6xoA3Z/0OIE7jQsFqb
	 T6L+zJ79YYKswYmagLUxqbamkXg+JngLMkDe9OOVSsXd3U3mxjmeuUIuMwP6YaQn7u
	 gN2EQgl+Xsdqype9Mm0V48ZPdKOG3BM0QL0IqbUJSCQTwUou+UrslkBvrRwdjiqk7g
	 G7uvT01amyH6KX5sN7iKP3RSVmzzqketiJFefpF9DJB6giOiUU1uBhStapSTsPfWMT
	 LTjsvu13dKzRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C9AC5AD44
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161069359.6888.628769518160205374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec81838558dce54c74d69ce075e800ec009a49fab294d09a2acaf717addba923
Date: Fri, 20 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771610693
