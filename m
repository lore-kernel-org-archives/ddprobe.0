Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F47F17C77
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764843174; cv=none; b=Yf0xNDYEwicv55s9RVOH3px+VwzqtbRyn1FM6kx9Cu0WonnBY5ci60+WCbSLU8OrWsfNBqyr3PcIHvpm3zsguJeg1o2rrgz1z775i45tXwkTazslSn2uPVKDRxbhD4CHVUEiYog4OhRVe/mBygyAeO88uecnXpgCJIkHVOnwl7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764843174; c=relaxed/simple;
	bh=HfPOSC7ZFJ3OPJQKZFLXd9Ngzx0MofaeR59qmnbgEh4=;
	h=To:Subject:From:Message-Id:Date; b=bHaMIOTZjWAbJabem5DZl7XqOJOwJip5t6+KsQSyUrmZAnEoRTlTEg7JapWI89ch85K3GppfCw8fMkxEinFJ8xEdOH5j74Eqvr64Igj+hDxWz8SgWFzhhpnELWnw8e5R/5HsQqD264bI04MJgD4Jnr/XH02UMHQ4Y/IIKZvqlws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khqwQubj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khqwQubj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AE0C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764843173;
	bh=HfPOSC7ZFJ3OPJQKZFLXd9Ngzx0MofaeR59qmnbgEh4=;
	h=To:Subject:From:Date:From;
	b=khqwQubjcOQ15BTJlFp7aGsN/01VO9nyWS9WJ5sbo44TrjAIUKxzADt5JhLT+LxD6
	 TypukMlca/AJg2e1s8c1Qp3VbB1RD/IE4RBLB4IqFntoFrNn4Unw82RQgWfKg+3TGA
	 QCkzCwKmQo0QjYUGRY/OGClF9DGB41bC8xq6ugRF6zp4K0osmGyKtOpeRz38wKJsTn
	 YcG/F8wNi/qLLY7SLCtnUe4j5uO+21qZnbyWzKY5GvDK0geQ4otmPt5SLx8oFuJrc3
	 jaraYaoFkr+Z2rMnhnPq53QvoR+mhHMuFCYPwoOqhA4mKhn6VjcXHtUiZSl6Urcq27
	 /D0DHFobLMubg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D55D1F9A5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484317377.4264.5194222737467906429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a485132651d4ac5447421d0f470309b3a1508970ae0c3f2bff7d7edae1323f8
Date: Thu, 04 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764843173
