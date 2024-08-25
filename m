Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44676163
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724546154; cv=none; b=F6ahi+eHClCOExzh7K2SMyjaTC5GV4UFlKkqWVR53IZHlLIcG4GiJLww0uDn2sSQ231+jkytZv2zqTTQ0WQvPzRt/iA0vllvPGRdCTBJ7GNsc5K6qefpaHXoTDad7QwqSi54Hf1+HC02tLqN0OSRqqWyXqyqkMAcwcF9BqnXMhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724546154; c=relaxed/simple;
	bh=flCKQ9yjVxUCqVfwsm5Et1E8sNd6eE9oPODKpJOJ4l4=;
	h=To:Subject:From:Message-Id:Date; b=JiOgZqVxTQPuQRNThj44Kutl4PXW4OvsLNKLk0LhbQRb1wttMcEoEJyLL3WQM154Dt2gYQKccFUIiHh4xQpUDrj2VfUQL3cGmGED9T1uYxgh0etzSQ6tJ/rqU7TNPXSJsXfAOoPWB9uwI3x9HNnD2fTzuaMCVqTh+08N10kklJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeV+uhZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeV+uhZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC7CC32781
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724546153;
	bh=flCKQ9yjVxUCqVfwsm5Et1E8sNd6eE9oPODKpJOJ4l4=;
	h=To:Subject:From:Date:From;
	b=QeV+uhZl2bUROW/5Htw7Q3T/a25c9OLU2dbTKlECISVFOUQmzR0JB+R5tCtcesGw7
	 9xK++LcDUo/mUOqZyOHG2aFnPECHiUPsjH7zAl59GGSvTynHUiYtjE1dYOBNCBE5Jw
	 jB7TuA4dzPHYiqXi/WuKNaYcQO2/SUxctknDbal09mC0HGWeqL0stcrurFe7nYPFHX
	 cMkOJcgyqh9vwKdp+WwFQEPfYnVBZ/yh4Rs/IqQRJ24zaqQvaemzmmnMusd2ATtKgu
	 srwgMH6XpILzH3G6UdNg0o+VDLBkxhxjFSfSLNMGCckL+jjW3DDPYIwB18tzxetxjH
	 hQxVBkerTQGCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C1DC52D6F
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172454615358.15866.9583771895721624014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7874a6cb5972a375703cfcaea3eefb98bfa13d048cfa8d72eafa2cd10bac552
Date: Sun, 25 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724546153
