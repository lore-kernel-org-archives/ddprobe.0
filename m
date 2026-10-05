Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C3034D926
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791237034; cv=none; b=j20iidihJukGFhaA/fNZA8Hb5e3pNpdg/eufyuYL9XgW5Q3L5teizbYtxNtIwtEviKrt9EKlU+V4VuT03XCGZCYV8KS4f3N5CgDg6RewlFTRRinvAHxRK0KycvgXgI5zLVp2//DiD6aMXdPoUHfaETyDrg61ouUkxQE5iYyvO5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791237034; c=relaxed/simple;
	bh=GVDfW6gI72zcrFhYOeecA8JJbcDz/SM249rLk7dnLg0=;
	h=To:Subject:From:Message-Id:Date; b=mGUdq+h0Od9ofhl7tTqKMjttmI4HVaQboTZW5skQQu+gTsAfFAvGghKB+XZFRiuVmnAtqcKiFWKftlEeppqLdHmG2aw8AbHGCn+kh5XQToppM+jB0Y6anmIlnk+XNJbUlQsaDVxr6UFiwakN3o8NvQMTgv7QF5kVoPnoz1/8gas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nO5LLVyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nO5LLVyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF49DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791237033;
	bh=GVDfW6gI72zcrFhYOeecA8JJbcDz/SM249rLk7dnLg0=;
	h=To:Subject:From:Date:From;
	b=nO5LLVyuMd9DfxHN4hb7cShkmeU31qvnvO5bzOtcUPr1B9f+49mhaOfP+0mpZPyAo
	 Fsw3Q13TvuqZkwIOHNdprjPdw5icCuJzgu7sPsCzoare0U9QX4J7ubNamSXAhzjfoj
	 5HZSk8sh7hwyb/w4zUduQTsBudhcyOW+SjXJu+cYO9JTMRY/pd1bSB21sJ0rEfaJSF
	 2hDJbeZiSHIDw/jcGsB94w0WqAD5iU4lc9nmt76GX3VU43GqxxIoTQrCXkbkeCYhAx
	 FXIBmMNvaLx1qDJXDAfzMvzYOYNQQ3ITXV8pf45jRyJIQMh9PK8gTYko7LQY3+tcC3
	 Gk4pZKLWQuenQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B7CA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123703368.32009.4571306279305216108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b749f2a2489c1c29427913585b5199fc5011c18e2a5088fbf3711c820ba26ab
Date: Mon, 05 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791237033
