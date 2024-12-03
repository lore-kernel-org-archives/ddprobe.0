Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7E98460
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733267754; cv=none; b=cNzGajPS+MgS+TiwKpfoT+f9NSIeb302qLoogrUVfeUqX1pm3PuUsDTFhrCtD8WfH93yseK0KcLwrFJ8B2BPbG0loFg03Ky0lRwOsS58lppt2KZr+arXhkWZ/13cIl/hwFagKUFF1yNPpeRmCcyQjDhh1y/2Nbm2zlingHExmmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733267754; c=relaxed/simple;
	bh=P5cEvdrEwzoX32fB848bG+k2AsRJLhFFsRcw7U56BQw=;
	h=To:Subject:From:Message-Id:Date; b=PuIKeCsV6J09xvMvUh/f0/q/qp6eyfx3OfQuj52skKa2tYYhGu2aOEySBFNr0qLAkOgn/sOqvqs21lP/LPmKgkvfFFMnojbr8kkbuLTo2qfkZYB7IlUga2g5wJ5+G+aEbG7jsx4hluhHAhnfgpaSlO3aH57af3edTLiwoZxkLGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJkWPZgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJkWPZgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CA1C4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733267753;
	bh=P5cEvdrEwzoX32fB848bG+k2AsRJLhFFsRcw7U56BQw=;
	h=To:Subject:From:Date:From;
	b=dJkWPZgBqDpP2il2eeVlwEHtYwL4SS88IzjIPgd5/McVeyIk8b4CAq2tZt/tyK5zv
	 qXKUGchoBy+s8biRr7PTu5jAaeUvnQOXkYtqEUFWXlExxwGEUPlpyd4g5H29t+N/EU
	 94svxnTGwjOH8qD1cvMoB1mpoGs/DSy3ouQc8uUqDPRM9JRwuJdUtmuF0XNvl/sXZV
	 yKjSDLlSeh2byirPTK7P96czjZOjzPc+yN7v01iBn73AMKIWDba2bI3DEEdTdGIfg3
	 6CBij/LxJK12IcZFyk0npnq0sM1DfXaX0dcxJzd9DrwJw5GXNzmS5ajvsONWAxArf8
	 lbYYhJMEWL5ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EECE77160
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173326775359.21722.17740845638275475259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1ce666bb251703335c86b695ce443a1a140e56894f9d127706966d1daf1adc
Date: Tue, 03 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733267753
