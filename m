Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316025C613
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776735454; cv=none; b=jdsXf9gw6w+pN8/MRj2qtiaw6mKj0q1vsnutck38Ur5VrseBYUMxkxKpOZQg8iU6wm67UQ2WG0cYq6A1frPFQYG5MdePJMQAr6tmj3se0XIssAFt15HYKqXaVhIxIkdw9qy/j7bEE3q7omyolGNGkAWAFToDqfIpoFWpfFxAl+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776735454; c=relaxed/simple;
	bh=SiRWZWfvtijvMqQhFmzwJyyIN2sqDXuEoaMQdPaRkwg=;
	h=To:Subject:From:Message-Id:Date; b=Osw5GbITUuCrGKDbw9ntwU3pKZquA2NhrpO0sCVh6UYydCY8njQVr6q/7z7lwBI+AobUr/Z3XLM4mU8tmRnjipoQo7g8Au4elwWT1nIk07U5s9FJhD4K3DObgLdqh5hnrmQCPpJCca8DaEiWpUwBX/g+N+m6Ss7k8ssuHhTHoIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvH7VX/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvH7VX/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF390C19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776735453;
	bh=SiRWZWfvtijvMqQhFmzwJyyIN2sqDXuEoaMQdPaRkwg=;
	h=To:Subject:From:Date:From;
	b=pvH7VX/pJlzPkayi1xht8S3hfnxePjIVQFE4ZToaprv2q5AogSezhzGLU78FWYwBL
	 8Lu5ES1037VH6gZZNGXDwL8Ryf6XiKx94plirIT2nUk1cJIx/MlOujYCsXotypD8AW
	 dHFDqtPUJYtrw/1kvN+DjlOoLLwTwJaL0SGrdTUatA3oKa+xTsBYNRmjAe2976Idpn
	 CvtJAH09kDl6FiK2RxURqZNZg38kX7o+IUlgYxkdJ2JQI9a84Zw2CLrLqvyWzMtusH
	 V79M4uW1+OQ/iyrIQMGx2xe9u9eGsSb9KJSmFuLQ9WI179yhb8SCmNbC0mAlAlQYfD
	 IWkmMD57+jIZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFADEF5A8D3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673545368.12361.9855478092546469156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76592f45db914ed1c45a39dbf3def0a63478a890a5e3f454c68bf76b29f864d4
Date: Tue, 21 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776735453
