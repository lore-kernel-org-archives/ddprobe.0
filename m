Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD0533D4E9
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781159194; cv=none; b=lxqqyEvdeBWTeTx5SVOYomPGOtf6Egdymu0hQp5B2So0mxiDBGN00rwgJluxLHBAbZLD9DEK0Bjfk1xszVQ9ZsXC9jOr4M2O5zMkaUAuc2CXKtn8yuHj3vo3jNUREtdopCHkSRWsNISajlEnWCGLNrvoejWDYnaee70L6WVCMgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781159194; c=relaxed/simple;
	bh=rpJGdC9xLeEMjJeETI3OY4hHOwjd+fMTXTJBU/HwPpY=;
	h=To:Subject:From:Message-Id:Date; b=eblT7V5zgTz3vV97ZunECwsqTm/LCqq1zamYPy6WAzxH22qJomz3z6dpdSq8yUXZSQlhrHv1kSLj5VERv5tzJ01euJ8UMisHuvM+0AFaMNZyAX6a1qS6J4ZxBUG+B/2Ff7OZOX9/9gdxF+QkeBoXrOuGoY50jD0VRluqiXsV/fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWQxiRmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWQxiRmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5168C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781159193;
	bh=rpJGdC9xLeEMjJeETI3OY4hHOwjd+fMTXTJBU/HwPpY=;
	h=To:Subject:From:Date:From;
	b=cWQxiRmFq7UFNhyRJR3MiDlJkOLvRlUY82Yi8/jWEiBj7c7Cl2lb3ePeN6EdIEO2K
	 pdRHShWGF4auEpPw4iplRq/FHmBg4iBFgu49HUSJVZSjmlP7+o4NX19/0M/eWmk1/o
	 9gPoIotxTbEJRqHfTAvVkV5NkWAznQHFJBwr4+zybMr4KY+FG4azHNdpVVsS0hX4mm
	 yNNoG2ZUSFe0UjBuVVaILcYzKg9pFmRvNt43qcXiEVnFhK8syP4KDc4yWQZC6J+hAn
	 tWLkqPuMK05NO5+h+zaFlYtE9OlVX0FPOohUMTPcSAVGxyrO1w/bRgUULSZeZXLWY1
	 fIFhv83Ttn1aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E1ECD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115919368.15860.4540602666697339917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3eed6a3219a146dcdb325fa39ebba82685d168763b50728da4defc8ed1cce2
Date: Thu, 11 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781159193
