Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7B0227BA5
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746016194; cv=none; b=frpc57E2+RAiNPcHP5kaC3kvzuL09ySg2MEwHBMNFLWmtMm1hIqWncODl+y8+/V6tx3GVDY2x1ex2Azk66QnolqFvshDVcOZ2SQnaN1rjEQq8cq6pbcjeS8C4yYpCEctlibJST2FHlCAtqeqcbaNTlWzjCVnBNXDqgS2xjB7iMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746016194; c=relaxed/simple;
	bh=PezPQOiWOgKeyWkGhgmWzDDBtnoudyxFDLW6w8vUa1o=;
	h=To:Subject:From:Message-Id:Date; b=ehUwGp+4XhIuZkT5JtzJ3WtfFTXs0YP1MvFD48qYmgtvHKy4fl9wES9dKXjIxTFIE4BN+uD9sdTv3opwvPbAeR3O/jt6xH7PPWs2lyLEDnrReoqPTr+w6lLpKXv/fM54lgkR39CrGMOzNilw5o66KfZyQaA1iJQ+NbhknZzn3jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlbCzKQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlbCzKQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3365C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746016193;
	bh=PezPQOiWOgKeyWkGhgmWzDDBtnoudyxFDLW6w8vUa1o=;
	h=To:Subject:From:Date:From;
	b=MlbCzKQQCooR5A7GygPIBKvDqb3ef/6FSJHefUpQ1qE7U2nxBjHv7VHo2uHEXyaZB
	 WWR4wgDJ32B+Xj5rZ1WcXIDY/YfLeasbvpQXWjpoaMtVrpg6/0mBnlrlcqpsVYDlxx
	 9JNbgBnmYq60KtmWxSsMRFs2zmyVePnjbPn0pamPMXI85DknUMTlJylg29H3hV78f0
	 aP9Ok4CYYrMu6iw6y9TC8oCCORGPU5JW9z8V2Ddd+dlcvX3JzsZTc/ZsqKyPvsB8iA
	 vHD4glq1DzUE10h6gqCQjMDGqWNkIA6GXSj8mlRY65tmvOLU9L2hHWwR3CvVXBZgR3
	 dOEHrYPMYOwaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B7C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601619358.10249.10670295747920411155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12bc2e525254f10883abb18db85dffc51eabfbe34998662c163e11e17fd4618
Date: Wed, 30 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746016193
