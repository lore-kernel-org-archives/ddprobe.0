Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DC93BB5A
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776737254; cv=none; b=NGWOQ9ua4Rr7r5LWt7k7cZC8I3RPC0paPcD102+QpQTLnv7c/0IQSpWDC4EuIlnBSVgvWPaqfz7Q1ty+8fp5RYlKH8+Us2iaMoGauerfyz2Sa7kGfWgwf3qys0FGwrUHLBRa1GUhokxq8Nu86nymmIOm+sqjoR2LUO7WWORN8CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776737254; c=relaxed/simple;
	bh=Vbbxf4mlxxvT5nCGG1lG0pkB+u4nITo9wNfouQZnFik=;
	h=To:Subject:From:Message-Id:Date; b=Cq8ddAO0QJbNmGIPimihs/MnToYqEGv4Pr6vLGz+AS9UsNapGfQX5pKIGtA0SF3POOFDLNX6Q+mvqaMkiu8YA0BAQbnICxjM7TecUDvxNgyM+dKfOzx4kL7c9e/Fln/OenVyaI6m1GMg+W/pV8TfhpKDBd49731hLOxYSu5M0Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvQ7FTcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvQ7FTcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0624C19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776737253;
	bh=Vbbxf4mlxxvT5nCGG1lG0pkB+u4nITo9wNfouQZnFik=;
	h=To:Subject:From:Date:From;
	b=bvQ7FTcLe+nHG5kvmgXUDU9Ru3xCbf8hTSn9OwD06S8y+RU6pWK8GDARF945hX/W5
	 zf0Ct40fWHtENYBGPvEeItamACUnCZ42Z13LbCWglozNtXI5CrJww+zHQeOzdPOX8e
	 ebDQmGjptD9vZXo/xQ39XUdozdW/Lci5h6oMnRUkb6cdsCX4Y9K1OsrCuXdNgGEva5
	 9CcTfJpqMHJTdSj4T54JHybeK8IooU9C+XuQqkfE8+1aZYKfEnIfSdF9AElotGqexa
	 ZI729UOBz0f8vSnw2qXndc5NpQo2R8UarQkHVGUg6P/jJyi6eg25lHlZdS9z/3Ultw
	 Btk2vYn27ZcXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0597F5A8D1
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673725368.12310.18323320131020904789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2666fc50981aa3316a2e18171f4ceb67d5eeec4c608a71cda1742136159576
Date: Tue, 21 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776737253
