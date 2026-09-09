Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D8D5540A7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788969634; cv=none; b=D7QuU3bXwXtUgUQGJLoxa4bgVYIjjLnTEbRgU1NHLhZEUcFMeRQbG5HwfUTmn/Dpq/fxcXR8EgjED4N1+GkFTKNiBvPvoXLerCRCBp3Y3E1wEhjoy3GeaKbg4Q/G6fvPjOVXW6xCJSsH9YZg/a3buPMBxpOVxG0zeoaaAmMn7xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788969634; c=relaxed/simple;
	bh=Z5Q5pp0KRsmF66StTPFp25l5VFUjJ+FXqnCWQ0IheKs=;
	h=To:Subject:From:Message-Id:Date; b=Vj8q22y5GO34SduwGHe57RwmbcwszckSUrJsmbYoj3xvw44aRhx+/YRB5J1dXwUUIRGrhNLUFDHKrRvBCfbaG0zd0lkuv133SJvIwMEO+sG8g4mhCcF6b050up5ZuREmVfb2qY8ooAlTdy9jwdE91uP7DpNCJiHIaxHtD4EQai8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSvxvRAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSvxvRAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8915C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788969633;
	bh=Z5Q5pp0KRsmF66StTPFp25l5VFUjJ+FXqnCWQ0IheKs=;
	h=To:Subject:From:Date:From;
	b=jSvxvRAN9Iww04HLSwscqaF37wLKsSOtlGBLt4YSBx+smskEOjhbowLVXwF7ATUdn
	 qKb3XJH6pVG6XNI7pr4BLIC0jkEN4IatOjc2Hc4MuttTz+jpTmwFLa/LC9ToSWvPdI
	 GRPgQKvpq3GgA0CvCE/j6cvUVayyzJP/PqxRlO6zQlC1Pcqzy2AunSdmsEzd0mwLWr
	 2AvIwoeMXOVEBzD7ibqM34+ShJ/EPS+PmBMiBXZkT458Jlgy7bOY+MceNjCk3EQzUr
	 j8LyaoLIijYDM2bi7pVm56APGmO27G+gnGKRuZz5DxEUQLuYxalPs2Pjd2Qurf+gDy
	 TOFf+kbH2aplQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00BDC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896963371.1432.10723126231681417521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f664a1ed0ba7bef0792bb8c8c920d6feae135f96b20e54a2076dc53dca5fcdb
Date: Wed, 09 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788969633
