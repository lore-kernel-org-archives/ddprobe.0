Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0DD212F98
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771645494; cv=none; b=AdIhVN2TPGq8DlvYnT3uunnefwE9qMrJsVQrnVDIXwPrFn9nI3txsI4zPFJ6z0vwetcblI05SrbhYpHFZ2GeajSOhl5QPFmihkdUDLTgAMlwUsmfURH1DLSCZbBWuB3fn4xLpMiGn0n9D+J+jPZwiS1ft3siiicdm2WnKtssc9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771645494; c=relaxed/simple;
	bh=L7yuDZK/tL6tq6ZiuD6jtFvTRAKF0oHMUxxyL9OjWZk=;
	h=To:Subject:From:Message-Id:Date; b=Vi9dXxPZhG4N4rP+kvznTaqW9BjA90jGdVWzqa3sL+c29ni68y0QRS4hJNaL/QCSLPWqXl961eaNr8T2JTbGgDMZ9xivUcMRWTOWwFxsJAf1rQfCLKaO1bBHI/BxdEYNZf4D31zpcBE9YcG4qwIYj08oHcHmJIBbHFvfmAwbKHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pObifp8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pObifp8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D2DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771645493;
	bh=L7yuDZK/tL6tq6ZiuD6jtFvTRAKF0oHMUxxyL9OjWZk=;
	h=To:Subject:From:Date:From;
	b=pObifp8vfEe41CmL1ZO9zoiJOJmEURIxCnd+YLd+rFp2WxGiX9VNvys8HaeUR8+bz
	 rGLSg3WZ+fhyG609aDdAb57KfskqkVx+qR4m65yCcYfBpAVRil5+6scKi1FroA12sn
	 m5PDD3kXt8lXFbwutQz5BbnOjM6tQQyCEpaabnhbJ8dw+Zv0XFNkD5ywE11eIrugNg
	 X005qur4Klvmd4aheRjaUV9mYRz82kLw6rzyvM2NU1Jmu4CPCN9I68Na9FZXkiWYI9
	 pjM/zccOaMz+ITJIsM9RdV0JwPauG0MJ3O5HWiryGMLZsMbYLswtU75MRDj/ZdqeJD
	 S9xWclwNUIjow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B50E9A049
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164549358.15558.16145891094712048898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a56e4056d18ebf5afee96e26e8e812562ef1b383015c6c82d58e1e68aaccab
Date: Sat, 21 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771645493
