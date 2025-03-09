Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDD91119A
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741485534; cv=none; b=sQJtIcNYGuICQB4lH9xDpnFzEfWSqow9f95gW0PivXoOMNvt+9ANjLeTFXl7ljWLeFT9HjqKSA+XHE05r0s2NY6qZWW4tzQdnqsAc9YOSL3TQsE27nI9Q06vWup1Fk3483KNKd7ALnjT4CmnwQMIBZJInSD7gHpZViWa2fwH3b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741485534; c=relaxed/simple;
	bh=3lztXhCcvV26OoXOBSSb1VheAA8YUncsOUvT0YlQx0A=;
	h=To:Subject:From:Message-Id:Date; b=tJIrD4mKLiRPOIfDd+F5OCNcRDlelIBkfk0f2mPuvibvwodkn8yEr82MMAG7OKR3HewwgCg6Ek3WL8zzdqcHq1nwl7fLCO998S9RDksesnS1ssFavVLn5QVQTDmnUUeibf4MHRYQo1X/nWM0jI6SqJda6XLoGHYBjXAUun+GGqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=um9VTSjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="um9VTSjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EE6C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741485533;
	bh=3lztXhCcvV26OoXOBSSb1VheAA8YUncsOUvT0YlQx0A=;
	h=To:Subject:From:Date:From;
	b=um9VTSjycEjbMV106b2IjemfFwUW9kuk/fmkzNLjyIT5/HFaipmw7OekXlhpyH6l1
	 QcFvA7dhppzbo4It6Usy8EIhXQCUSQOOz+RYa9ExhSq5s9TTAOsQGvo/UKTZ7+OhUM
	 +ALnX7WK+Vyw6ADBpHS5kGtLsiE/+seVx289/fxy5frIyatPdGz/bu2O4Pzaax9/6s
	 j2IP3hJZXrWvYcwBlQoNceGA61dU/bRflT2WEMQxX5jqIVj7Q0w/wqtnxm6g4dthDi
	 vaewhgd5HsLx/xkGNxSx9tVBSIT1G5qTTJ1XdzdvFIKv4pMY0c8dfBkQbJOjowOTNq
	 +RsACjpr2qsag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B121C282EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174148553362.2307.16683662154735912857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be139115464e6281cd3f71c329306d0b7c6e28952f183f59b02201daa797617
Date: Sun, 09 Mar 2025 01:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741485533
