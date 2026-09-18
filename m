Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4355F42CB05
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789729834; cv=none; b=TNJdsYbGaqdh85m6jjol8UnE3MGyJkSTF9xixGDv1rC7Zqvp5yCQXUV4fG2+0LxI4XPo7no3MKhEDJesWr2kpm+3TuPTwFHO95exq0Cgo969hYKPKgzRBM2K3p47Ym7+DGzXFbTFhfsgpjUX8gVVcwN5BMREyTID5soMm91+dPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789729834; c=relaxed/simple;
	bh=a/zwKr7sYJ2fNVd6F1j3rzyfzcbtPp5OQT47cenv1uY=;
	h=To:Subject:From:Message-Id:Date; b=iAeVG4840c3pgjArLUvSESHK3UrnPQ0kcPMC1jKEOHLEWOAuh6XYwA2AI7T7IqIyuPQe4ZswsGMN920cSD/NVPwDmyzaUlM7HxxpTAhGakqDb65UJd6cb3ts+EAoP5F+Lps4iLWUOBKDbK8SvqdFtJE8ev8bGtgZzW7lP1i/c0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QM6PKWeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QM6PKWeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF380C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789729833;
	bh=a/zwKr7sYJ2fNVd6F1j3rzyfzcbtPp5OQT47cenv1uY=;
	h=To:Subject:From:Date:From;
	b=QM6PKWeR3yvX0hSyPzLfV+2HXO7ozzJVuDqtWBtZEFLi9JuoPLNKn+MGRgA/+Op4/
	 prl5wymYVFEN7nlIdd1fm65yPSO3Pef/fq3pFfmAIFg6uE92n1VR55jUCx9h7UGZkd
	 VqTF7WvE5hAhZdhhMliyK0UCKAgy3pLehQKgIInkq1WidcRXHI1IOvqb6RNEcNikif
	 7JNtu6iAmfgV269RCYzEVGurTMdbtvYr3IzshOjNxtPaN7w5sp2VWNJmgjO3RbXlF6
	 RMn0NV+69YHj7nz5DDaff4SvIMQN9CUP1E4tyz349/dNXKdwZDpoxwYO5KIu30aAsM
	 5kkh6fKARjlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC210C982DC
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972983368.678.12341592149549974309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efa267f7bc61a22fc4a85e16d28d3aa9d1af41e07e7885e5bc87b4d2b48a5a3
Date: Fri, 18 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789729833
