Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569CB25485D
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743013794; cv=none; b=CRo/LLD8IpDQqwOlqrhYay8HS/wx1gExjp6zoO6AgqntyDgMFSNnIfXVDbfjYZihoQPEHxr+rPhFqRT2iCPJsE974tBUzZuxNVkuWT3GaC+z+csyMrD1tQEkrEBhWfnuCx2umi1EsSRirwF8BpsSji+t49aWXfx9H/eo108HDkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743013794; c=relaxed/simple;
	bh=7Yx6CpxUaoSMXv9uT+ttdZpW/7nLC8pRtw3KVrdfcD4=;
	h=To:Subject:From:Message-Id:Date; b=FtyJxoNpIhM9qbOZZdqXLfNDaTyTpawvcLJQmLqtNvoRKKHd0aw/G9OLXgpoLi5RXRefv3oQQh4AiOfT8NNj9lgU7YCO/uZ9VLADsGE927j4W3qoQIGkxhdSYLnJ9KwKCtvNEqLydaaCnoeNLxYhW6rbXWACJQ0ax8q+OCxybio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcDvpy//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcDvpy//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC70C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743013793;
	bh=7Yx6CpxUaoSMXv9uT+ttdZpW/7nLC8pRtw3KVrdfcD4=;
	h=To:Subject:From:Date:From;
	b=lcDvpy//OGsfg6/ts0xTdxekbhhoKvQvVJTZiN/PBQmfLy6NsS1sVZEThi/doDwFk
	 T929jk2qVMXBtOWN5H9Lia9R7DjLZs3NZBW13BAmZbi6dZIkFHzRtlWVHGNvgnbXUL
	 S+fhuAEOdk8YG6oVZBNlSHY020VSSUaIyqbhOOjYmP5+fuXPKicmolYqurj3K7TAeY
	 iEq3EoPrnJb5SIweREy2T7ofP+uXlvEH8AvUv5Grl9bjjq2qYbo43THEAODFKJI0Qs
	 3ZUm5Zr83PqUALze/nWPfNclVT/wfOOjHO6+FFawtSXsjd5QKXADBHGpgm1lSL5gIR
	 VVGxVfZOWniiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D46C3600E
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301379368.30261.1873788642161178596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c76143d8481f12f7b2f539bbb473a9912b2ed66fc4a77f167c0daf0dbed2a5f
Date: Wed, 26 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743013793
