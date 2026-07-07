Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B3434CFC7
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783463914; cv=none; b=MpOfFbAZ4lJBJcyYvOMeMr2TlP4XNeIj5Y9zmjUTp9r98EXJetrP2TRgEclth5v3kN4Q58GImE8MF9ZKJK3TuRKspb9O9ZypSDY6eMBFz+C0f3owSUGXC4dAjuBszLBhCwLUsxlSEdIOPK52R5DiViLakAjlssruBEqN1w4I7GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783463914; c=relaxed/simple;
	bh=VG5FJ/GyxFOnCe2+5TQTVUVAitg/fG4r8f+1JqXlBvw=;
	h=To:Subject:From:Message-Id:Date; b=MxMmqyGD/1vW9AaeD1/T1LkHt4xIyLCS3cnJlSf52C+peJGoYI/ggqh078UYXY8bmi9uOayFmWPdBjNgVwPNT6kmgDBl6335LQxKql4rQ1mu3UuAgYjn13G4gnxYMCTaPvwcoJZwX9mpHX9oOYvVms9WeB+ZNIo1dKbjG8OsJ4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgwHP1kL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgwHP1kL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FB1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783463913;
	bh=VG5FJ/GyxFOnCe2+5TQTVUVAitg/fG4r8f+1JqXlBvw=;
	h=To:Subject:From:Date:From;
	b=XgwHP1kLXe3v7wR4Dj9xIkdcThRcFqdBUCssotdbA549m0LUaQ+sQ/CvmsJIaUdIp
	 EysZBBCCBy8uydk48xyKHcajfzOJLrTJ/rAee/uoATKPtoN9P6QOPaAkfp+3TAXuJS
	 C45xVjpiRRgVuXrAI/VkkV4O2TTIgmMRVphETclRicbRjC4inZiRywn2y7uCcqONxy
	 mSIgKElw7IFx0w5OdKJizpcrTfGOKZfiindptRwj/6yNgQXKeKh7Bo4T4WgphBpE2W
	 m+Kl8GVJ1fL14YeaMhC2RbhN3PDfuQLEUeNsJeTewnTczTVls7So/60Cvjh/VzEKQ2
	 8+ItN/TklsYNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81F8C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346391368.12434.10475265500384067707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbbd50d2560963aff3361a8b2b9fda0eed478b6f95a47e783cbde297773980b6
Date: Tue, 07 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783463913
