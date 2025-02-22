Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1DE335BA
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740185934; cv=none; b=blq+5nDoy8ebhNADTkLNL+frj4S9izl3zyCZwAKWjbN+0BP9Rv4zDny8AbBb6eYIthIjgSQMMGrewsZPYUegww9h3NnWCiZDrJz7AuCbl24wr7K1H50SSkvXA41xSpNDXzGR14CLQZBVeYCGtFbVypA/gtJp9g0y/5zaKdutW10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740185934; c=relaxed/simple;
	bh=o8QL8Fv/KZ3XbJfnGbGI8WeTvbbDQ0xfTvu4Ejh7oI8=;
	h=To:Subject:From:Message-Id:Date; b=jZ6isC7bI2vfmJlMfH3Jih6C9cvM/ud83+/x39RE1HeAFiYaoK4TJdgmlrgR+MLQdhqxcw6Kd2lVgUqTqJoooplN1t8Fnkj4IWoLlmTiDKlpIxyHgsm9Wkses6mCcCuNCd6iYi/MaRjtjF30r6CwgzP1QGcwmAH5179VNCv4fU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZXKDPSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZXKDPSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD6AC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740185933;
	bh=o8QL8Fv/KZ3XbJfnGbGI8WeTvbbDQ0xfTvu4Ejh7oI8=;
	h=To:Subject:From:Date:From;
	b=uZXKDPSAubkb1xvT6OKthHQgqUz0+JTPZ1DvjqMmnYsz6XS/E3lIfoCEjUXQ3ZivC
	 ZGlEyrZM7kPgV4GCmDBr6ccz9pd+z77bZ6epii9lnXqBQ8TwWpRwk8uV0KDFpm85ZD
	 wd5q99SSrYBcPFqb1uHhSXtXZlQAxqBjYAgpO+yXTpyxVldVBv7RlFjX8/gSoBH7XL
	 oqjz7p7eDxUDsQaUwJSOC9euscXhr/WVgrg9mJnD7b+T6+tH7I1T37VfCYU3Ccpqm2
	 7nHNAo0727eEo1iOvRi57NFvSVA17cjs2XE7bdXTVOczfoiUeK5ugtO4Km77ednty0
	 eT54rKe5Af2RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99495C021B3
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 00:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174018593358.9081.11815418171831542438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d598d01e1608648aa0119182a45f0598aa079545d002a1dc2d052a813fe2e79e
Date: Sat, 22 Feb 2025 00:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740185933
