Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1183081DD
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756327794; cv=none; b=YBhy8m0o+pwA/GxuVwcQD/x9sHccM77rvKCV0FNSxHvxhSwzdfL7hfRYAOix5Kti+Jl3foKQfquKaiVSBTog7VHelcyjr+h/pk305Jf77yc8tysN1oa0W44DIY4nMqYqAIBKMltjSBjgq3PLlc4pzXNZr8sRInA5N4dGDB4OoCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756327794; c=relaxed/simple;
	bh=FGebOjK5p7WGpZY72h/EjXbWu7co2pA07uWk3MLIAkY=;
	h=To:Subject:From:Message-Id:Date; b=Lbg0CFr4G4p6QmxqzV5hjUd0AYPyfdfKIT77fQq3nCnTFtvhtOlh7u92qjSzYWVx98mWV3UUvfol+cFA9ofVGxg2LqLojkBAkQtbICaaHNv9F8T81o1l7/3YI6+fATxkmNaAX9PYiq+PFUTteH5Umpnstz8Y2CG6khLsoWgucQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZhiQ66C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZhiQ66C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E64DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756327793;
	bh=FGebOjK5p7WGpZY72h/EjXbWu7co2pA07uWk3MLIAkY=;
	h=To:Subject:From:Date:From;
	b=NZhiQ66CeBlyHf8KyU8PmlGwgJcgMzxqROaXgcpx/Y5F2dXgBsiwgB66Bjo3UxZQu
	 fiXM/QMfNenKeNd4msbxTQZL2ipXZTqM+vXXOw1eckT7OId91zsKbrAN/QrKqoPjz/
	 0FLy2zrpWMJtppi6LnI6R5h8nMivH+KF5Pa7RTjBr4nmwSfITcerCD7KKjNfnWc7tm
	 i9zIq75y7gdAwgXTBHOKGjl9WgMp9281aSkpIZuOcxNZyVCg3RsOLWhG2CcBMtXe16
	 PDb2G9ViBM0pE19kWF1CJLwz88QLS/iyEnVaw1VFGTofPYVETg/cD1Qmme+voHVL93
	 d0LqSTt3nhDPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF1CCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632779357.7091.13778055823787564488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfefc57415aa135488c942d7f1a19eaee87fda861ec30e796d83552031fbc953
Date: Wed, 27 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756327793
